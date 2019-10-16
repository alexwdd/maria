<?php
namespace app\api\controller;
use think\Request;

class Wechat extends Common {

    public function _initialize(){
        parent::_initialize();
        header('Access-Control-Allow-Origin:*');
        if (config('site.isClose')==1) {
            returnJson(0,'SUCCESS','系统关闭');
        }
    }

    public function login(){        
        if(request()->isPost()){
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $code = input('post.code');
            if(!$code){die;}

            $shareUser = input('post.shareUser');       
            $config = tpCache('weixin');
            $url = 'https://api.weixin.qq.com/sns/oauth2/access_token?appid='.$config['APP_ID'].'&secret='.$config['APP_SECRET'].'&code='.$code.'&grant_type=authorization_code';
            $con = $this->https_post($url);
            $con = json_decode($con,true);
            if ($con['errcode']) {
                returnJson(0,$con['errmsg']);die;
            }

            $openid = $con['unionid'];
            $access_token = $con['access_token'];
            $url = 'https://api.weixin.qq.com/sns/userinfo?access_token='.$access_token.'&openid='.$openid.'&lang=zh_CN';            
            $con = $this->https_post($url);
            $con = json_decode($con);
            $wxface = (string)$con->headimgurl;
            $wxname = (string)$con->nickname;

            $request = Request::instance();
            $data['nickname'] = $wxname;
            $data['openid'] = $openid;    
            $data['headimg'] = $wxface;
            $data['disable'] = 0;
            $data['createTime'] = time();
            $data['createIP'] = $request->ip();
            $user = db('Member')->where("openid",$openid)->find();
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
                    returnJson(1,'success',['token'=>$token]);
                }else{
                    returnJson(0,'登录失败');
                }
            }else{
                $result = model('Member')->wechat($data);
                if ($result['code']==1) { 
                    $config = tpCache("member");

                    if($shareUser!='' && is_numeric($shareUser)){
                        $father = db("Member")->where('id',$shareUser)->find();
                        if($father){
                            $fina = $this->getUserMoney($father['id']);
                            $data = array(
                                'type' => 9,
                                'money' => $config['shareStore'],
                                'memberID' => $father['id'],     
                                'doID' =>  $father['id'],
                                'oldMoney'=>$fina['point'],
                                'newMoney'=>$fina['point']+$config['shareStore'],
                                'admin' => 1,
                                'msg' => '成功分享商城，奖励'.$config['shareStore'].'积分。',
                                'extend1'=>0,
                                'createTime' => time()
                            );  
                            db('Finance')->insert( $data );
                        }
                    }

                    $user = db("Member")->field('id,nickname,headimg,token')->where('id',$result['msg'])->find();

                    if($config['register']>0){
                        $data = array(
                            'type' => 9,
                            'money' => $config['register'],
                            'memberID' => $user['id'],
                            'doID' =>  $user['id'],
                            'oldMoney'=>0,
                            'newMoney'=>$config['register'],
                            'admin' => 1,
                            'msg' => '新用户注册，赠送'.$config['register'].'积分。',
                            'extend1'=>0,
                            'createTime' => time()
                        );  
                        db('Finance')->insert( $data );                            
                    }
                    $this->autoCoupon($user);
                    returnJson(1,'success',['token'=>$user['token']]);
                }else{
                    returnJson(0,$result['msg']);
                }
            }         
        }
    }

    public function wxsdk(){
        if(request()->isPost()){
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $config = tpCache("weixin");
            $jsapi_ticket = $this->get_jsapi_ticket(); 
            $noncestr = createNonceStr();
            $timestamp = time();
            $localUrl = input('post.reqUrl');
            $string = 'jsapi_ticket='.$jsapi_ticket.'&noncestr='.$noncestr.'&timestamp='.$timestamp.'&url='.$localUrl;
            $signature = sha1($string);
            $data = [
                'appID'=>$config['APP_ID'],
                'noncestr'=>$noncestr,
                'timestamp'=>$timestamp,
                'signature'=>$signature
            ];
            echo json_encode($data);
        }
    }

    public function getWacheToken(){
        $config = tpCache("weixin");
        if (cache('AccessToken')) {
            return cache('AccessToken');
        }else{
            $url = 'https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid='.$config['APP_ID'].'&secret='.$config['APP_SECRET'];
            $result = $this->https_post($url);
            $result = json_decode($result,true);
            cache('AccessToken',$result['access_token'],1200);
            return cache('AccessToken');
        }
    }

    //获得jsTicket
    public function get_jsapi_ticket(){
        if (cache('JsTicket')) {
            return cache('JsTicket');
        }else{  
            $access_token = $this->getWacheToken();
            $url = 'https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token='.$access_token.'&type=jsapi';
            $con = $this->https_post($url);
            $con = json_decode($con);
            $jsapi_ticket = $con->ticket;
            cache('JsTicket',$jsapi_ticket,1200);
            return cache('JsTicket');
        }
    }
}