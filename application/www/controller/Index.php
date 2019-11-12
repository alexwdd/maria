<?php
namespace app\www\controller;

class Index extends Common
{
	public function index()
	{
    	if (request()->isMobile()) {
			$this->redirect('http://m.aumaria.com');
		}

		/*$token = '265cb04a5898e15d24dc11c5955cbbd9bc06591b';
		$cryptStr = $token.','.request()->ip();
        $flag = think_encrypt($cryptStr,config('DATA_CRYPT_KEY'));
        \think\Cookie::set('flag', $flag, ['prefix'=>'www','expire'=>86400]);*/
		return view();
	}
}
