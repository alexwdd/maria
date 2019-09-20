<?php
namespace app\www\controller;

class Index extends Common
{
	public function index()
	{
    	if (request()->isMobile()) {
			$this->redirect('http://m.aumaria.com');
		}
		return view();
	}
}
