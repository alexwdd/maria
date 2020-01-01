<?php
namespace app\www\controller;
use think\Request;
use think\Cookie;

class Flash extends Common
{
    public function index(){
        $config = tpCache('member');
        $this->assign('config',$config);
        return view();
    }

    public function ajax(){
        if(request()->isPost()){
            $data = input('post.');
            $data['token'] = $this->user['token'];
            $result = $this->https_post($this->api.'/api/goods/flash',$data);
            echo $result;
        }
    }
}
