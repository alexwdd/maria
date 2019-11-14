<?php
namespace app\www\controller;
use think\Request;
use think\Cookie;

class Goods extends Common
{
	public function index()
	{

		return view();
	}

    //添加购物车
    public function addCart(){
        if(request()->isPost()){
            $data['goodsID'] = input('post.goodsID');
            $data['number'] = input('post.number/d',1);
            $data['specID'] = input('post.specID/d',0);
            $data['action'] = input('post.action','inc');
            $data['token'] = $this->user['token'];
            $result = $this->https_post($this->api.'/api/cart/pub',$data);
            echo $result;
        }
    }

    //加入收藏
    public function fav(){
        if(request()->isPost()){
            $data['goodsID'] = input('post.goodsID');
            $data['token'] = $this->user['token'];
            $result = $this->https_post($this->api.'/api/account/doFav',$data);
            echo $result;
        }
    }
}
