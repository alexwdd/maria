<?php
namespace app\api\controller;

class Cart extends Auth {

    //我的购物车
    public function lists(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $map['memberID'] = $this->user['id'];
            $list = db('Cart')->where($map)->select();
            $total = 0;
            foreach ($list as $key => $value) {
                $goods = db("Goods")->where('id',$value['goodsID'])->find();
                $result = $this->getGoodsPrice($goods,$value['specID'],$this->flash);

                $list[$key]['name'] = $goods['name'];
                $list[$key]['say'] = $goods['say'];
                $list[$key]['marketPrice'] = $goods['marketPrice']; 
                $list[$key]['picname'] = getRealUrl($goods['picname']);
                $list[$key]['price'] = $result['price'];
                $list[$key]['spec'] = $result['spec'];
                $list[$key]['total'] = $result['price'] * $value['number'];
                $list[$key]['rmb'] = number_format($this->rate*$list[$key]['total'],1); 
                $list[$key]['checked'] = false; 

                $total += $list[$key]['total'];
            }
            $rmb = number_format($this->rate*$total,1); 
            returnJson(1,'success',['cart'=>$list,'total'=>$total,'rmb'=>$rmb]);
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
                $spec = db("GoodsSpecPrice")->where(['goods_id'=>$goodsID,'item_id'=>$specID])->find();
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
            $map['specID'] = $specID;
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
            
            $list = db('Cart')->where(array('memberID'=>$this->user['id']))->select();
            $total = 0;
            foreach ($list as $key => $value) {
                $goods = db("Goods")->where('id',$value['goodsID'])->find();
                $result = $this->getGoodsPrice($goods,$value['specID'],$this->flash);
                $total += $result['price'] * $value['number'];
            }
            $rmb = number_format($this->rate*$total,1);
            returnJson(1,'success',['number'=>count($list),'total'=>$total,'rmb'=>$rmb]);
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

            $list = db('Cart')->where(array('memberID'=>$this->user['id']))->select();
            $total = 0;
            foreach ($list as $key => $value) {
                $goods = db("Goods")->where('id',$value['goodsID'])->find();
                $result = $this->getGoodsPrice($goods,$value['specID'],$this->flash);
                $total += $result['price'] * $value['number'];
            }
            $rmb = number_format($this->rate*$total,1);
            returnJson(1,'success',['number'=>count($list),'total'=>$total,'rmb'=>$rmb]);
        }       
    }

    public function package(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $list = db("Cart")->where('memberID',$this->user['id'])->order('typeID asc,trueNumber desc')->select();
            if (!$list) {
                returnJson(0,'购物车中没有商品');
            }
            $result = $this->getYunfeiJson($list);
            returnJson(1,'success',$result);
        } 
    }

    //创建订单
    public function order(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $map['memberID'] = $this->user['id'];
            $address = db('Address')->where($map)->order('def desc , id desc')->find();
            $sender = db('Sender')->where($map)->order('id desc')->find();

            unset($map);
            $map['memberID'] = $this->user['id'];
            $list = db('Cart')->where($map)->select();
            if (!$list) {
                returnJson(0,'购物车中没有商品');
            }
            $baoguo = $this->getYunfeiJson($list);

            $total = 0;
            $point = 0;
            $isCut = 1;            
            foreach ($list as $key => $value) {
                $goods = db("Goods")->where('id',$value['goodsID'])->find();
                if($goods['fid']>0){
                    $fid = $goods['fid'];
                }else{
                    $fid = $goods['id'];
                }  
                if($this->checkInFlash($fid,$this->flash)){
                    $isCut = 0;
                }

                $result = $this->getGoodsPrice($goods,$value['specID'],$this->flash);

                $list[$key]['name'] = $goods['name'];
                $list[$key]['say'] = $goods['say'];
                $list[$key]['marketPrice'] = $goods['marketPrice']; 
                $list[$key]['picname'] = getRealUrl($goods['picname']);
                $list[$key]['price'] = $result['price'];
                $list[$key]['spec'] = $result['spec'];
                $list[$key]['total'] = $result['price'] * $value['number'];  
                $list[$key]['rmb'] = number_format($this->rate*$list[$key]['total'],1); 
                $list[$key]['checked'] = false; 

                $total += $list[$key]['total'];
                $point += $goods['point'] * $value['trueNumber'];
            }
            $rmb = number_format($this->rate*$total,1); 

            //我的优惠券
            $map['status'] = 0;
            $map['memberID'] = $this->user['id'];
            $map['endTime'] = array('gt',time());
            $coupon = db("CouponLog")->field('id,name,desc,full,dec,goodsID,endTime')->where($map)->select();
            foreach ($coupon as $key => $value) {
                $coupon[$key]['endTime'] = date("Y-m-d H:i:s",$value['endTime']);
                if(!$this->checkCoupon($value,$list,$total)){
                    unset($coupon[$key]);
                }
            }
             
            returnJson(1,'success',[
                'isCut'=>$isCut,
                'address'=>$address,
                'sender'=>$sender,
                'point'=>$point,
                'total'=>$total,
                'rmb'=>$rmb,
                'cart'=>$list,
                'bag'=>$baoguo,
                'coupon'=>$coupon
            ]);
        }
    }
}