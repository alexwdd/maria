<?php
namespace app\www\controller;
use think\Request;
use think\Cookie;

class Login extends Common
{
	public function index()
	{ 
		return view();
	}

    public function wechat(){
        $config = tpCache('weixin');
        $url = urlencode('http://'.$_SERVER['HTTP_HOST'].'/www/login/doWechat');
        //$url = 'http://www.aumaria.com/www/login/doWechat';
        $url = 'https://open.weixin.qq.com/connect/qrconnect?appid='.$config['WEB_APPID'].'&redirect_uri='.$url.'&response_type=code&scope=snsapi_login&state=web#wechat_redirect';
        $this->redirect($url);
    }

    public function doWechat(){
        $code = input('get.code');
        if(!$code){
            $this->redirect(url('index/index'));die;
        }
    
        $config = tpCache('weixin');
        $url = 'https://api.weixin.qq.com/sns/oauth2/access_token?appid='.$config['WEB_APPID'].'&secret='.$config['WEB_SECRET'].'&code='.$code.'&grant_type=authorization_code';
        $con = $this->https_post($url);        
        $con = json_decode($con,true);
        if ($con['errcode']) {
            $this->redirect(url('index/index'));die;
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
                $cryptStr = $token.','.request()->ip();
                $flag = think_encrypt($cryptStr,config('DATA_CRYPT_KEY'));
                Cookie::set('flag', $flag, 'www');
                $this->redirect(url('index/index'));
            }else{
                $this->redirect(url('index/index'));die;
            }
        }else{
            $result = model('Member')->wechat($data);
            if ($result['code']==1) { 
                $config = tpCache("member");
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
                $cryptStr = $token.','.request()->ip();
                $flag = think_encrypt($user['token'],config('DATA_CRYPT_KEY'));
                Cookie::set('flag', $flag, 'www');
                $this->redirect(url('index/index'));
            }else{
                $this->redirect(url('index/index'));die;
            }
        }  
    }

    function signout(){
        Cookie::delete('flag','www');
        $this->redirect(url('index/index'));
    }
}
