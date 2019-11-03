<?php
namespace app\www\controller;
use think\Session;

class User extends Common
{
    public function _initialize(){

        parent::_initialize();
        if($this->user['id']==0){
            $this->redirect('login/wechat');
        }   
    }
}
