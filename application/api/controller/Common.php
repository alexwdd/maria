<?php
namespace app\api\controller;

use app\common\controller\Base;

class Common extends Base {

    public function _initialize(){
    	header('Access-Control-Allow-Origin:*');
        parent::_initialize();
    }
}