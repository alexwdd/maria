<?php
namespace app\www\controller;
use think\Request;
use think\Cookie;

class Goods extends Common
{
	public function index()
	{
        $bid = input('param.bid');
        $sid = input('param.sid');
        $thisCate = db('GoodsCate')->where('id',$bid)->find();
        $this->assign('thisCate',$thisCate);

        if($thisCate['fid']==0){
            $cate = db("GoodsCate")->where('fid',$thisCate['id'])->order('sort asc,id asc')->select();
        }else{
            $cate = db("GoodsCate")->where('fid',$thisCate['fid'])->order('sort asc,id asc')->select();
        }
        $this->assign('cate',$cate);
        $this->assign('sid',$sid);
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

    public function detail(){
        $id = input('param.id');
        if($id=='' || !is_numeric($id)){
            $this->error("参数错误");
        }

        $data['goodsID'] = $id;
        $data['token'] = $this->user['token'];
        $result = $this->https_post($this->api.'/api/goods/detail',$data);
        $result = json_decode($result,true);
        if($result['code']==0){
            $this->error($result['desc']);
        }
        $this->assign('goods',$result['body']['goods']);
        $this->assign('filter_spec',$result['body']['filter_spec']);
        $this->assign('coupon',$result['body']['coupon']);
        $this->assign('spec_goods_price',json_encode($result['body']['spec']));
        return view();
    }
}
