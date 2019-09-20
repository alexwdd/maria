<?php
namespace app\www\controller;
use think\Request;
use think\Db;
use think\Session;

class Login extends Home
{
	public function index()
	{
		return view();
	}

	public function register(){   
        $config = tpCache('sms');
        $this->assign('config',$config);
        return view();
    }

    function signout(){
        Session::delete('flag','www');
        $this->redirect(url('index/index'));
    }
}
