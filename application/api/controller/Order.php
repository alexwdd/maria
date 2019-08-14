<?php
namespace app\api\controller;

class Order extends Auth {

    //我的订单
    public function lists(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $keyword = input('param.keyword');
            $status = input('param.status');
            $page = input('post.page/d',1);
            $pagesize = input('post.pagesize',10);
            $firstRow = $pagesize*($page-1); 

            if($keyword!=''){
                $map['order_no'] = $keyword;
            }
            if($status!=''){
                $map['status'] = $status;
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
            $list = $obj->field('id,order_no,isCut,total,front,back,sn,status,createTime')->where($map)->limit($firstRow.','.$pagesize)->order('id desc')->select();
            foreach ($list as $key => $value) {
                $list[$key]['createTime'] = date("Y-m-d H:i:s",$value['createTime']);
                if($value['sn']=='' || $value['front']=='' || $value['back']==''){
                    $list[$key]['upload'] = 0;
                }else{
                    $list[$key]['upload'] = 1;
                }
                
                $list[$key]['status'] = getOrderStatus($value['status']);

                $goods = db("OrderCart")->field('goodsID,name,picname,price,number,spec')->where('orderID',$value['id'])->select();
                foreach ($goods as $k => $val) {
                    $goods[$k]['picname'] = getRealUrl($val['picname']);
                }
                $list[$key]['goods'] = $goods;
            }
            returnJson(1,'success',['next'=>$next,'data'=>$list]);
        }
    }

    //订单详情
    public function detail(){
        if (request()->isPost()) {
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $id = input('post.id');
            if ($id=='') {
                returnJson(0,'参数错误');
            }
            $map['id'] = $id;
            $map['memberID'] = $this->user['id'];
            $list = db('Order')->field('id,total,discount,point,fund,order_no,name,tel,province,city,county,addressDetail,sn,front,back,sender,senderTel,intr,status,createTime')->where( $map )->find();
            if ($list) {
                $list['createTime'] = date("Y-m-d H:i:s",$list['createTime']);
                if($list['sn']=='' || $list['front']=='' || $list['back']==''){
                    $list['upload'] = 0;
                }else{
                    $list['upload'] = 1;
                }
                $list['status'] = getOrderStatus($list['status']);

                $goods = db("OrderCart")->field('goodsID,name,picname,price,number,spec')->where('orderID',$list['id'])->select();
                foreach ($goods as $k => $val) {
                    $goods[$k]['picname'] = getRealUrl($val['picname']);
                }
                $list['goods'] = $goods;

                $baoguo = db("OrderBaoguo")->field('id,payment,weight,kuaidi,kdNo,eimg,image')->where('orderID',$list['id'])->select();
                foreach ($baoguo as $key => $value) {
                    $goods = db("OrderDetail")->field('name,number')->where('baoguoID',$value['id'])->select();
                    $baoguo['goods'] = $goods;
                }
                returnJson(1,'success',[
                    'order'=>$list,
                    'baoguo'=>$baoguo
                ]); 
            }else{
                returnJson(0,'信息不存在');
            }
        }
    }

    //发布
    public function pub(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $config = tpCache("member");

            $list = db("Cart")->where('memberID',$this->user['id'])->select();
            if (!$list) {
                returnJson(0,'购物车中没有商品');
            }

            //缺少判断库存

            //判断商品是否抢光


            $goodsMoney = 0;
            $cutMoney = 0;
            $inprice = 0;
            $point = 0;
            foreach ($list as $key => $value) {
                $goods = db("Goods")->where('id',$value['goodsID'])->find();
                $result = $this->getGoodsPrice($goods,$value['specID'],$this->flash);
                $list[$key]['price'] = $result['price'];
                $list[$key]['name'] = $goods['name'];
                $list[$key]['picname'] = $goods['picname'];
                if($result['spec']){
                    $list[$key]['spec'] = $result['spec']['key_name'];
                }else{
                    $list[$key]['spec'] = '';
                }
                $goodsMoney += $result['price'];
                $cutMoney += $result['cutPrice'];
                $inprice += $goods['inprice'] * $value['trueNumber'];
                $point += $goods['point'] * $value['trueNumber'];
            }    

            $senderID = input('post.senderID');
            $sender = db("Sender")->where(['id'=>$senderID,'memberID'=>$this->user['id']])->find();
            if(!$sender){
                returnJson(0,'发件人错误');
            }

            $addressID = input('post.addressID');
            $address = db("Address")->where(['id'=>$addressID,'memberID'=>$this->user['id']])->find();
            if(!$address){
                returnJson(0,'收件人错误');
            }

            $couponID = input('post.couponID');
            $data['memberID'] = $this->user['id'];

            //判断优惠券
            if ($couponID!="" && is_numeric($couponID)) {
                $map['id'] = $couponID;
                $map['useTime'] = 0;
                $map['memberID'] = $this->user['id'];
                $map['endTime'] = array('gt',time());
                $coupon = db("CouponLog")->where($map)->find();
                if(!$coupon){
                    returnJson(0,'无效的优惠券');
                }
                $coupon['goodsID'] = $couponInfo['goodsID'];

                if(!$this->checkCoupon($coupon,$list)){
                    returnJson(0,'该优惠券不满足使用条件');
                }

                $data['couponID'] = $couponID;
                $data['isCut'] = 0;
                $data['discount'] = $coupon['dec'];
            }else{
                $data['couponID'] = 0;
                if($config['isCut']==0){
                    $data['isCut'] = 0;
                }else{
                    if($cutMoney > 0){
                        $data['isCut'] = 1;
                    }else{
                        $data['isCut'] = 0;
                    }
                }
                $data['discount'] = 0;
            }
            //获取包裹信息
            $baoguo = $this->getYunfeiJson($list,$address['province']);   
    
            $total = $goodsMoney - $data['discount'];
            if($total<=0){
                $total = 0;
            }
            $order_no = $this->getOrderNo();
            if($data['isCut']==0){
                $data['fund'] = 0;
            }else{
                $data['fund'] = $total;
            }
            $data['total'] = $total;
            $data['goodsMoney'] = $goodsMoney;
            $data['minGoodsMoney'] = $goodsMoney - $cutMoney;
            $data['inprice'] = $inprice;
            $data['order_no'] = $order_no;
            $data['addressID'] = $addressID;
            $data['name'] = $address['name'];
            $data['tel'] = $address['tel'];
            $data['sn'] = $address['sn'];
            $data['front'] = $address['front'];
            $data['back'] = $address['back'];
            $data['province'] = $address['province'];
            $data['city'] = $address['city'];
            $data['county'] = $address['county'];
            $data['addressDetail'] = $address['addressDetail'];
            $data['sender'] = $sender['name'];
            $data['senderTel'] = $sender['tel'];
            $data['intr'] = input('post.intr'); 

            $res = model('Order')->add( $data );
            if ($res['code']==1) {
                $orderID = $res['msg'];
                foreach ($baoguo['baoguo'] as $key => $value) {
                    //保存详单
                    $detail['orderID'] = $orderID;        
                    $detail['order_no'] = $data['order_no'];
                    $detail['memberID'] = $this->user['id'];  
                    $detail['payment'] = $value['yunfei'];
                    $detail['wuliuInprice'] = $value['inprice'];//物流成本
                    $detail['type'] = $value['type'];
                    $detail['weight'] = $value['totalWuliuWeight'];
                    $detail['kuaidi'] = $value['kuaidi'];
                    $detail['kdNo'] = '';
                    $detail['name'] = $data['name'];
                    $detail['tel'] = $data['tel'];
                    $detail['province'] = $data['province'];            
                    $detail['city'] = $data['city'];
                    $detail['county'] = $data['county'];
                    $detail['addressDetail'] = $data['addressDetail'];
                    $detail['sender'] = $data['sender'];
                    $detail['senderTel'] = $data['senderTel'];
                    $detail['createTime'] = time();          
                    $detail['status'] = 0;              
                    $detail['snStatus'] = 0;
                    $detail['del'] = 0;
                    $baoguoID = db('OrderBaoguo')->insertGetId($detail);
                    if ($baoguoID) {
                        foreach ($value['goods'] as $k => $val) {   
                            $gData = [
                                'orderID'=>$orderID,
                                'memberID'=>$this->user['id'],
                                'baoguoID'=>$baoguoID,
                                'goodsID'=>$val['goodsID'],
                                'specID'=>$val['specID'],
                                'name'=>$val['name'],
                                'short'=>$val['short'],
                                'number'=>$val['trueNumber'],    
                                'price'=>$val['price'],
                                'del'=>0,
                                'createTime'=>time()
                            ];
                            db('OrderDetail')->insert($gData);      
                        }
                    }
                    unset($detail);
                }

                //作废优惠券
                if($coupon){
                    db("CouponLog")->where('id',$coupon['id'])->update([
                        'useTime'=>time(),
                        'status'=>1
                    ]);
                }

                //删除购物车，保存订单记录                
                $history = [];
                foreach ($list as $key => $value) {
                    array_push($history,[
                        'orderID'=>$orderID,
                        'memberID'=>$this->user['id'],
                        'goodsID'=>$value['goodsID'],
                        'specID'=>$value['specID'],
                        'name'=>$value['name'],
                        'picname'=>$value['picname'],
                        'price'=>$value['price'],
                        'spec'=>$value['spec'],
                        'number'=>$value['number'],
                        'trueNumber'=>$value['trueNumber']
                    ]);
                }
                db("OrderCart")->insertAll($history);
                db("Cart")->where('memberID',$this->user['id'])->delete();
                returnJson(1,'success',[
                    'order_no'=>$order_no,
                    'isCut'=>$data['isCut'],
                    'total'=>$data['total'],
                    'minGoodsMoney'=>$data['minGoodsMoney']
                ]); 
            }else{
                returnJson(0,$res['msg']);
            }            
        }
    }

    //删除
    public function del(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $id = input('post.id');
            if ($id=='' || !is_numeric($id)) {
                returnJson(0,'缺少参数');
            }
            $map['id'] = $id;
            $map['memberID'] = $this->user['id'];
            $map['payStatus'] = 0;
            $list = db('Order')->where($map)->find();
            if ($list) {
                if ($list['wallet']>0) {
                    $fdata = array(
                        'type' => 3,
                        'money' => $list['wallet'],
                        'memberID' => $this->user['id'],
                        'mobile' => $this->user['mobile'],
                        'doID' => $this->user['id'],
                        'doUser' => $this->user['mobile'],
                        'oldMoney'=>$this->user['money'],
                        'newMoney'=>$this->user['money']+$list['wallet'],
                        'admin' => 2,
                        'msg' => '取消订单，退还账户余额$'.$list['wallet'].'，订单号：'.$list['order_no'],
                        'showTime' => time(),
                        'createTime' => time()
                    );
                    db('Finance')->insert($fdata);
                }
                db('Order')->where('id',$id)->delete();
                db('OrderBaoguo')->where('orderID',$id)->delete();
                db('OrderCart')->where('orderID',$id)->delete();
                db('OrderDetail')->where('orderID',$id)->delete();
            }

            returnJson(1,'success');
        }       
    }

    //砍价
    public function cut(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $orderID = input('post.orderID');
            if ($orderID=='' || !is_numeric($orderID)) {
                returnJson(0,'缺少参数');
            }
            $map['id'] = $orderID;
            $map['isCut'] = 1;
            $map['status'] = 0;
            $list = db('Order')->where($map)->find();
            if(!$list){
                returnJson(0,'订单已关闭');
            }

            if($list['memberID'] == $this->user['id']){
                returnJson(0,'不能为自己的订单砍价');
            }
            
            unset($map);
            $map['openid'] = $this->user['openid'];
            $map['orderID'] = $orderID;
            $res = db("OrderCut")->where($map)->find();
            if($res){
                returnJson(0,'不能重复砍价');
            }

            $config = tpCache('member');
            $money = rand($config['min']*100,$config['max']*100);
            $money = $money/100;
            
            $data = [
                'openid'=>$this->user['openid'],
                'orderID'=>$orderID,
                'nickname'=>$this->user['nickname'],
                'headimg'=>$this->user['headimg'],
                'money'=>$money,
                'createTime'=>time()
            ];
            db("OrderCut")->insert($data);
            returnJson(1,'success');
        }
    }
}