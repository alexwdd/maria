<?php
namespace app\www\controller;
use think\Request;
use think\Db;

class Index extends Home
{
	public function index()
	{
    	//if (request()->isMobile()) {
			$this->redirect('mobile/index/index');
		//}
		//return view();
	}
}
