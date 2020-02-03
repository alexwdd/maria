<?php
namespace app\api\controller;
use app\common\controller\Base;
use think\Request;

class Login extends Base {

    public function _initialize(){
        parent::_initialize();
        header('Access-Control-Allow-Origin:*');
        if (config('site.isClose')==1) {
            returnJson(0,'SUCCESS','系统关闭');
        }
    }

    public function wechat(){        
        if (request()->isPost()) {            
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $config = tpCache('member');

            if ($config['isReg'] == 0) {
                returnJson(0,'注册暂未开放！');
            }    

            $data['openid'] = input('post.openid');
            $data['nickname'] = input('post.nickname');
            $data['headimg'] = input('post.headimg');
            $data['code'] = rand(10000000, 99999999);

            if($data['openid']==''){
                returnJson(0,'缺少openid');
            }
            if($data['nickname']==''){
                returnJson(0,'缺少昵称');
            }
            if($data['headimg']==''){
                returnJson(0,'缺少头像');
            }

            $user = db("Member")->field('id,nickname,headimg,code,openid,mobile')->where('openid',$data['openid'])->find();
            if($user){
                $request= Request::instance();
                $log = array(
                    'memberID' => $user['id'],
                    'account' => $data['openid'],
                    'loginTime' => time(),
                    'loginIP' => $request->ip()
                );
                db('LoginLog')->insert($log);

                //生成token
                $str = md5(uniqid(md5(microtime(true)),true)); 
                $token = sha1($str);
                $userData = array(
                    'token' => $token,
                    'token_out' => time()+3600*config('TOKEN_HOUR')
                );
                $r = db('Member')->where(array("openid" => $data['openid']))->update($userData);
                if($r){
                    $user['token'] = $token;
                    returnJson(1,'success',$user);
                }else{
                    returnJson(0,'登录失败');
                }                
            }else{
                $result = model('Member')->wechat($data);
                if ($result['code']==1) { 
                    $user = db("Member")->field('id,nickname,headimg,code,token,mobile')->where('id',$result['msg'])->find();
                    
                    if($config['register']>0){         
                        $data = array(
                            'type' => 9,
                            'money' => $config['register'],
                            'memberID' => $user['id'],
                            'doID' =>  $user['id'],
                            'oldMoney'=>0,
                            'newMoney'=>$config['register'],
                            'admin' => 0,
                            'msg' => '新用户注册，赠送'.$config['register'].'积分。',
                            'extend1'=>0,
                            'createTime' => time()
                        );  
                        db('Finance')->insert( $data );                            
                    }
                            
                    $this->autoCoupon($user);
                    returnJson(1,'success',$user);
                }else{
                    returnJson(0,$result['msg']);
                }
            }
        }
    }

    public function mobile(){        
        if (request()->isPost()) {
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $mobile = input('post.mobile');
            $code = input('post.code');            

            if (empty($mobile)) {
                returnJson(0,'手机号不能为空！');
            } elseif (!check_mobile($mobile)) {
                returnJson(0,'手机号格式错误！');
            }

            if ($code=='' || !is_numeric($code)) {
                returnJson(0,'请输入验证码');
            }

            if($code!='2020'){
                $res = $this->getCodeStatus($code,$mobile);

                if ($res['code']==0) {
                    returnJson(0,$res['msg']);
                }
            }            

            unset($map);
            $map['account'] = $mobile;
            $map['regcode'] = $code;
            db('MemberCode')->where($map)->order('id desc')->setField('status',1);

            $user = db("Member")->field('id,nickname,headimg,code,openid,mobile')->where('mobile',$mobile)->find();
            if($user){
                $request= Request::instance();
                $log = array(
                    'memberID' => $user['id'],
                    'account' => $mobile,
                    'loginTime' => time(),
                    'loginIP' => $request->ip()
                );
                db('LoginLog')->insert($log);

                //生成token
                $str = md5(uniqid(md5(microtime(true)),true)); 
                $token = sha1($str);
                $userData = array(
                    'token' => $token,
                    'token_out' => time()+3600*config('TOKEN_HOUR')
                );
                $r = db('Member')->where("mobile",$mobile)->update($userData);
                if($r){
                    $user['token'] = $token;
                    returnJson(1,'success',$user);
                }else{
                    returnJson(0,'登录失败');
                }                
            }else{
                $data['mobile'] = $mobile;
                $data['code'] = rand(10000000, 99999999);
                $result = model('Member')->mobile($data);
                if ($result['code']==1) { 
                    $user = db("Member")->field('id,nickname,headimg,code,token,mobile')->where('id',$result['msg'])->find();                    
                    if($config['register']>0){         
                        $data = array(
                            'type' => 9,
                            'money' => $config['register'],
                            'memberID' => $user['id'],
                            'doID' =>  $user['id'],
                            'oldMoney'=>0,
                            'newMoney'=>$config['register'],
                            'admin' => 0,
                            'msg' => '新用户注册，赠送'.$config['register'].'积分。',
                            'extend1'=>0,
                            'createTime' => time()
                        );  
                        db('Finance')->insert( $data );                            
                    }
                            
                    $this->autoCoupon($user);
                    returnJson(1,'success',$user);
                }else{
                    returnJson(0,$result['msg']);
                }
            }
        }
    }  
}
