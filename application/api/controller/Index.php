<?php
namespace app\api\controller;

class Index extends Common
{
    public function index(){
    	if (request()->isPost()) {            
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $config = tpCache('member');

            $ad = db("Ad")->field('name,picname,url')->where('cid',1)->select();
            foreach ($ad as $key => $value) {
            	$ad[$key]['picname'] = getRealUrl($value['picname']);
            }

            $map['fid'] = 0;
            $map['comm'] = 1;
            $cate = db("GoodsCate")->field('id,name,path,picname')->where($map)->select();
            foreach ($cate as $key => $value) {
            	$cate[$key]['picname'] = getRealUrl($value['picname']);
            }

            $push = db('OptionItem')->field('value,name')->where('cate',1)->select();
            foreach ($push as $key => $value) {
                $push[$key]['goods'] = [];
                $goodsID = db('GoodsPush')->where('cateID',$value['value'])->order('updateTime desc')->value('goodsID');
                if ($goodsID) {
                    $goods = db("Goods")->field('id,name,picname,price,marketPrice')->where('id',$goodsID)->find();
                    if ($goods) {
                        $goods['picname'] = getRealUrl($goods['picname']);
                        $goods['rmb'] = $goods['price']*$this->rate;
                        $push[$key]['goods'] = $goods;
                    }                    
                }                
            }

            //推荐
            $commend = db("Goods")->field('id,name,picname,price,marketPrice')->where('comm',1)->order('sort asc,id desc')->limit(20)->select();
            foreach ($commend as $key => $value) {
                $commend[$key]['picname'] = getRealUrl($value['picname']);
                $commend[$key]['rmb'] = $value['price']*$this->rate;
            }

            //今日抢购
            $flash = [];
            foreach ($this->flash as $key => $value) {
                if($key<15){
                    array_push($flash,$value);
                }
            }
            foreach ($flash as $key => $value) {
                unset($flash[$key]['spec']);
                unset($flash[$key]['pack']);
                $goods = db("Goods")->field('id,name,picname,price,marketPrice')->where('id',$value['goodsID'])->find();
                $flash[$key]['name'] = $goods['name'];
                $flash[$key]['picname'] = getRealUrl($goods['picname']);
                $flash[$key]['marketPrice'] = $goods['marketPrice'];
                $flash[$key]['rmb'] = $value['price']*$this->rate;
            }                        
            
            returnJson(1,'success',[
            	'ad'=>$ad,
            	'category'=>$cate,
                'push'=>$push,
                'commend'=>$commend,
                'flash'=>$flash,
            	'rate'=>$this->rate,
            	'hotkey'=>$config['hotkey'],
            ]);
        }
    }	
}