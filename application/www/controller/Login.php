<?php
namespace app\www\controller;

class Login extends Common
{
	public function index()
	{ 
		return view();
	}

    public function qrcode(){
        $config = tpCache('weixin');
        //$notify = urlencode('http://'.$_SERVER['HTTP_HOST'].'/api/wechat/login');
        $notify = 'http://www.aumaria.com/api/wechat/login';
        $url = 'https://open.weixin.qq.com/connect/qrconnect?appid='.$config['WEB_APPID'].'&redirect_uri='.$notify.'&response_type=code&scope=snsapi_login&state=STATE#wechat_redirect';
        $errorCorrectionLevel = 'Q';//纠错级别：L、M、Q、H
        $matrixPointSize = 10;//二维码点的大小：1到10

        require_once EXTEND_PATH.'qrcode/qrcode.php';
        $object = new \QRcode();
        $object->png($url, false , $errorCorrectionLevel, $matrixPointSize, 2);//
    }

    function signout(){
        Session::delete('flag','www');
        $this->redirect(url('index/index'));
    }
}
