<?php
namespace app\www\controller;

class Index extends Common
{
	public function index()
	{
    	if (request()->isMobile()) {
			$this->redirect('http://m.aumaria.com');
		}

		/*$token = 'c762f2e04ddaaed0a1c57285abcf1b3844a56cb1';
		$cryptStr = $token.','.request()->ip();
        $flag = think_encrypt($cryptStr,config('DATA_CRYPT_KEY'));
        \think\Cookie::set('flag', $flag, ['prefix'=>'www','expire'=>86400]);*/
		return view();
	}
}
