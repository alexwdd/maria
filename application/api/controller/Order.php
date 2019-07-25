<?php
namespace app\api\controller;

class Order extends Auth {

    //我的订单
    public function lists(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $keyword = input('param.keyword');
            $page = input('post.page/d',1);
            $pagesize = input('post.pagesize',10);
            $firstRow = $pagesize*($page-1); 

            if($keyword!=''){
                $map['order_no'] = $keyword;
            }
            $map['memberID'] = $this->user['id'];
            $obj = db('Order');
            $count = $obj->where($map)->count();
            $totalPage = ceil($count/$pagesize);
            if ($page < $totalPage) {
                $next = 1;
            }else{
                $next = 0;
            }
            $list = $obj->where($map)->limit($firstRow.','.$pagesize)->order('id desc')->select();
            returnJson(1,'success',['next'=>$next,'data'=>$list]);
        }
    }

    public function detail(){
        if (request()->isPost()) {
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $id = input('post.id');
            if ($id=='') {
                returnJson(0,'参数错误');
            }
            $map['id'] = $id;
            $map['memberID'] = $this->user['id'];
            $list = db('Order')->where( $map )->find();
            if ($list) {  
                returnJson(1,'success',$list); 
            }else{
                returnJson(0,'信息不存在');
            }
        }
    }

    //发布
    public function pub(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $list = db("Cart")->where('memberID',$this->user['id'])->select();
            if (!$list) {
                returnJson(0,'购物车中没有商品');
            }

            $data['senderID'] = input('post.senderID');
            $data['addressID'] = input('post.addressID');
            $couponID = input('post.couponID');
            $data['memberID'] = $this->user['id'];

            if ($couponID!="" && is_numeric($couponID)) {
                $map['id'] = $couponID;
                $map['useTime'] = 0;
                $map['memberID'] = $this->user['id'];
                $map['endTime'] = array('gt',time());
                $coupon = db("CouponLog")->where($map)->find();
                if(!$coupon){
                    returnJson(0,'无效的优惠券');
                }
                $couponInfo = db("Coupon")->where('id',$coupon['couponID'])->find();
                if(!$couponInfo){
                    returnJson(0,'无效的优惠券');
                }
                $coupon['full'] = $couponInfo['full'];
                $coupon['dec'] = $couponInfo['dec'];
                $coupon['goodsID'] = $couponInfo['goodsID'];
                if(!$this->checkCoupon($coupon,$list)){
                    returnJson(0,'该优惠券不满足使用条件');
                }
                $data['couponID'] = $couponID;
            }           
            $res = model('Order')->add( $data );
            if ($res['code']==1) {  
                returnJson(1,'success'); 
            }else{
                returnJson(0,$res['msg']);
            }            
        }
    }

    //删除
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
            db("Order")->where($map)->delete();
            returnJson(1,'success');
        }       
    }
}