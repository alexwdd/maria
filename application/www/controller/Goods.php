<?php
namespace app\www\controller;
use think\Request;
use think\Cookie;

class Goods extends Common
{
	public function index()
	{
        $cid = input('param.cid');
        $thisCate = db('GoodsCate')->where('id',$cid)->find();
        $this->assign('thisCate',$thisCate);

        if($thisCate['fid']==0){
            $cate = db("GoodsCate")->where('fid',$thisCate['id'])->select();
        }else{
            $cate = db("GoodsCate")->where('fid',$thisCate['fid'])->select();
        }
        $this->assign('cate',$cate);
		return view();
	}

    public function ajax(){
        if(request()->isPost()){
            $data = input('post.');
            $data['token'] = $this->user['token'];
            $result = $this->https_post($this->api.'/api/goods/lists',$data);
            echo $result;
        }
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
