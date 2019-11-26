<?php
namespace app\www\controller;

class Cart extends User
{
    public function index(){ 
        return view();
    }

    public function submit(){
        $ids = input('param.ids');
        if($ids==''){
            $this->error("参数错误");
        }
        $this->assign('ids',$ids);
        return view();
    }
    
    public function getNumber(){
        $list = db('Cart')->where(array('memberID'=>$this->user['id']))->select();
        returnJson(1,'success',['number'=>count($list)]);
    }

    public function address(){
        $map['memberID'] = $this->user['id'];        
        $list = db('Address')->where($map)->order('id desc')->select();
        $this->assign('list',$list);
        return view();     
    }

    public function addPerson(){
        return view();
    }

    //购物车界面删除商品
    public function delcart(){
        $map['id'] = input('param.id');
        $map['memberID'] = $this->user['id'];
        db('Cart')->where($map)->delete();
        echo json_encode(['code'=>1]);
    }

    //设置购物数量
    public function setCartNum(){
        $number = input('param.number');
        $map['id'] = input('param.cartID');
        $map['memberID'] = $this->user['id'];
        $obj = db('Cart');
        $list = $obj->where($map)->find();
        
        $data['number'] = $number;
        $obj->where($map)->update($data); 

        unset($map);
        $map['memberID'] = $this->user['id'];
        $list = db('Cart')->where($map)->select();
        $total = 0;
        foreach ($list as $key => $value) {
            $goods = db("Goods")->where('id',$value['goodsID'])->find();

            if($value['specID']>0){//有规格选项
                $spec = db("GoodsSpecPrice")->field('key_name,price')->where('item_id',$value['specID'])->find(); 
                $list[$key]['spec'] = $spec['key_name'];
                $list[$key]['price'] = $spec['price'];
            }else{
                $list[$key]['spec'] = '';
                $list[$key]['price'] = $goods['price'];
            }
            $list[$key]['goods'] = $goods; 
            $list[$key]['total'] = $list[$key]['price'] * $value['number'];
            $total += $list[$key]['total'];
        }
        $result = fix_number_precision($total,2); 
        echo json_encode(['total'=>$result]);
    }

    //保存订单
    public function doSubmit(){
        $map['memberID'] = $this->user['id'];
        $list = db("Cart")->where($map)->select();
        if (!$list) {
            $this->error('没有选择任何商品');
        }

        $total = 0;
        foreach ($list as $key => $value) {
            $goods = db("Goods")->where('id',$value['goodsID'])->find();

            if($value['specID']>0){//有规格选项
                $spec = db("GoodsSpecPrice")->field('key_name,price')->where('item_id',$value['specID'])->find(); 
                $list[$key]['spec'] = $spec['key_name'];
                $list[$key]['price'] = $spec['price'];
            }else{
                $list[$key]['spec'] = '';
                $list[$key]['price'] = $goods['price'];
            }
            $list[$key]['goods'] = $goods; 
            $list[$key]['total'] = $list[$key]['price'] * $value['number'];
            $total += $list[$key]['total'];
        }

        $data = input('post.');
        $data['memberID'] = $this->user['id'];
        $data['order_no'] = $this->getOrderNo();
        $data['money'] = $total;
        $data['payment'] = 0; 
        $res = model('Order')->add( $data );         
        if ($res['code']==1) {
            //保存详单
            $orderID = $res['msg'];
            foreach ($list as $key => $value) {
                //保存详单
                $detail['orderID'] = $orderID;
                $detail['spec'] = $value['spec'];              
                $detail['goodsID'] = $value['goods']['id'];  
                $detail['picname'] = $value['goods']['picname'];
                $detail['name'] = $value['goods']['name'];
                $detail['number'] = $value['number'];
                $detail['price'] = $value['price'];
                $detail['money'] = $value['price']*$value['number']; 
                $detail['memberID'] = $this->user['id'];   
                $detail['cancel'] = 0;
                $detail['createTime'] = time();
                db('OrderDetail')->insert($detail);
                db('Goods')->where('id='.$value['goods']['id'])->setInc('sellNumber',$value['number']);
                unset($detail);
            }
            unset($map);
            $map['memberID'] = $this->user['id'];
            db("Cart")->where($map)->delete();
            $this->success('操作成功',url('Order/pay','orderID='.$orderID));
        }else{
            $this->error($res['msg']);
        }
    }
}
