<?php
namespace app\www\controller;

use app\common\controller\Base;
use think\Session;

class Common extends Base {
	public function _initialize(){
        parent::_initialize();

        if (config('site.isClose')==1) {
            echo '<html><head><meta charset="utf-8" /><title></title><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"></head><body><h1>'.config('site.closeInfo').'</h1></body></html>';die;
        }


        if (!Session::get('flag','www')) {
            $user = ['id'=>0];
        }else{
            $flag = think_decrypt(Session::get('flag','www'),config('DATA_CRYPT_KEY'));
            $flagArr = explode(',', $flag);
            if ($flagArr[1]!=request()->ip()) {
                $user = ['id'=>0];
            }else{
                $user = db('Member')->where(array('id'=>$flagArr[0],'disable'=>0))->find();      
                if (!$user) {
                    $user = ['id'=>0];
                }  
            }
        }
        $this->user = $user;
        $this->assign('user',$this->user);        
        
        //空信息       
        $this->assign('empty','<div class="empty"><img src="/app/www/view/common/image/empty.png" /><p>空空如也~</p></div>');
    }
    
}