<?php
namespace app\mobile\controller;
use app\common\controller\Base;
use think\Session;

class Home extends Base
{
    public function _initialize(){

        parent::_initialize();
        if (config('site.isClose')==1) {
            echo '<html><head><meta charset="utf-8" /><title></title><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"></head><body><h1>'.config('site.closeInfo').'</h1></body></html>';die;
        }
       
        $this->assign('empty','<div class="empty"><img src="/app/mobile/view/common/image/empty.png" /><p>空空如也~</p></div>');  
    }  

    
}
