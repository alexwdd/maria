<?php
namespace app\www\controller;

class Login extends Common
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
