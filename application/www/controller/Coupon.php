<?php
namespace app\www\controller;

class Coupon extends Common
{
	public function index()
	{
        $data= [];
        $map['status'] = 1;
        $map['register'] = 0;
        $list = db("Coupon")->where($map)->select();
        foreach ($list as $key => $value) {
            unset($map);
            $map['couponID'] = $value['id'];
            $map['memberID'] = $this->user['id'];
            $count = db("CouponLog")->where($map)->count();
            if($count>=$value['number']){
                unset($value);
            }else{
                array_push($data,$value);
            }
        }
        $this->assign('list',$data);
		return view();
	}
}
