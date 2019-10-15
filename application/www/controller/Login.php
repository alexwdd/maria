<?php
namespace app\www\controller;

class Login extends Common
{
	public function index()
	{ 
		return view();
	}

    public function wechat(){
        $config = tpCache('weixin');
        //$notify = urlencode('http://'.$_SERVER['HTTP_HOST'].'/api/wechat/login');
        $notify = 'http://www.aumaria.com/api/wechat/login';
        $url = 'https://open.weixin.qq.com/connect/qrconnect?appid='.$config['WEB_APPID'].'&redirect_uri='.$notify.'&response_type=code&scope=snsapi_login&state=web#wechat_redirect';
        echo $url;die;
        $this->redirect($url);
    }

    function signout(){
        Session::delete('flag','www');
        $this->redirect(url('index/index'));
    }
}
