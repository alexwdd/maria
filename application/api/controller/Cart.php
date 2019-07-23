<?php
namespace app\api\controller;

class Cart extends Auth {

    //我的购物车
    public function lists(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $map['memberID'] = $this->user['id'];
            $list = db('Cart')->where($map)->select();
            returnJson(1,'success',['cart'=>$list]);
        }
    }

    //我的购物车
    public function pub(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}
            
            $goodsID = input('param.goodsID');
            $number = input('param.number');
            $specID = input('param.specID/d',0);
            $action = input('param.action','inc');

            if ($number=='' || !is_numeric($number) || $number<1) {
                returnJson(0,'缺少number');
            }

            if ($goodsID=='' || !is_numeric($goodsID)) {
                returnJson(0,'缺少goodsID');
            }

            if ($specID==='' || !is_numeric($specID)) {
                returnJson(0,'缺少规格参数');
            }

            $goods = db("Goods")->where('id',$goodsID)->find();
            if (!$goods) {
                returnJson(0,'商品不存在');
            }

            if ($specID>0) {
                $spec = db("Goods")->where(['goods_id'=>$goodsID,'item_id'=>$specID])->find();
                if (!$spec) {
                    returnJson(0,'商品规格错误');
                }
            }

            $empty = getGoodsEmpty($goods);
            if ($empty==1) {
                returnJson(0,'该商品已售罄');
            }

            $db = db("Cart");
            $map['memberID'] = $this->user['id'];
            $map['goodsID'] = $goodsID;
            $list = $db->where($map)->find();
            if ($action=='inc') {
                if ($list) {
                    $number = $list['number']+$number;
                    $data['number'] = $number;
                    $data['trueNumber'] = $number*$goods['number'];
                    $db->where($map)->update($data);
                }else{
                    $data = [
                        'memberID'=>$this->user['id'],
                        'goodsID'=>$goods['id'],
                        'specID'=>$specID,
                        'number'=>$number,
                        'trueNumber'=>$number*$goods['number'],
                        'typeID'=>$goods['typeID']
                    ];
                    $db->insert($data);
                }
            }else{
                if ($list) {
                    if ($list['number']<=1) {
                        $db->where($map)->delete();
                    }else{
                        $number = $list['number']-$number;
                        $data['number'] = $number;
                        $data['trueNumber'] = $number*$goods['number'];
                        $db->where($map)->update($data);
                    }                
                }
            }
            
            $count = db("Cart")->where(array('memberID'=>$this->user['id']))->count();
            returnJson(1,'success',['number'=>$count]);
        }
    }

    //清空购物车
    public function clear(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $map['memberID'] = $this->user['id'];
            db("Cart")->where($map)->delete();
            returnJson(1,'success');
        }
    }

    //列表页面快速删除
    public function del(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $ids = input('post.ids');
            if ($ids=='') {
                returnJson(0,'缺少参数');
            }
            $ids = explode(",",$ids);
            $map['id'] = array('in',$ids);
            $map['memberID'] = $this->user['id'];
            db("Cart")->where($map)->delete();

            $count = db("Cart")->where(array('memberID'=>$this->user['id']))->count();
            returnJson(1,'success',['number'=>$count]);
        }       
    }
}