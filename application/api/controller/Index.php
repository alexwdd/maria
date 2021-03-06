<?php
namespace app\api\controller;

class Index extends Common
{
    public function index(){
    	if (request()->isPost()) {
                        
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $config = tpCache('member');

            $ad = db("Ad")->field('name,intr,picname,url,appUrl,goodsID')->where('cid',1)->order('sort asc,id desc')->select();
            foreach ($ad as $key => $value) {
                $value['picname'] = getThumb($value["picname"],1000,480);
            	$ad[$key]['picname'] = getRealUrl($value['picname']);
            }

            //首页分类
            $map['fid'] = 0;
            $map['comm'] = 1;
            $cate = db("GoodsCate")->field('id,name,path,picname')->where($map)->order('sort asc')->select();
            foreach ($cate as $key => $value) {
                $value['picname'] = getThumb($value["picname"],200,200);
            	$cate[$key]['picname'] = getRealUrl($value['picname']);
            }

            //三连图广告
            $three = db("Ad")->field('name,intr,picname,url,appUrl,goodsID')->where('cid',4)->order('sort asc,id desc')->limit(3)->select();
            foreach ($three as $key => $value) {
                $value['picname'] = getThumb($value["picname"],400,400);
                $three[$key]['picname'] = getRealUrl($value['picname']);
            }

            /*$push = db('OptionItem')->field('value,name,ext')->where('cate',1)->select();
            foreach ($push as $key => $value) {
                $push[$key]['goods'] = [];
                $goodsID = db('GoodsPush')->where('cateID',$value['value'])->order('updateTime desc')->value('goodsID');
                if ($goodsID) {
                    $goods = db("Goods")->field('id,name,picname,price,marketPrice,say')->where('id',$goodsID)->find();
                    if ($goods) {
                        $goods['picname'] = getThumb($goods["picname"],400,400);
                        $goods['picname'] = getRealUrl($goods['picname']);
                        $goods['rmb'] = round($goods['price']*$this->rate,1);
                        $push[$key]['goods'] = $goods;
                    }                    
                }                
            }*/

            //推荐
            unset($map);
            $map['comm'] = 1;
            $map['show'] = 1;
            $commend = db("Goods")->field('id,name,picname,say,price,marketPrice,comm')->where($map)->order('sort desc,id desc')->limit(20)->select();
            foreach ($commend as $key => $value) {
                $value['picname'] = getThumb($value["picname"],400,400);
                $commend[$key]['picname'] = getRealUrl($value['picname']);
                $commend[$key]['rmb'] = round($value['price']*$this->rate,1);
            }

            unset($map);
            $map['comm1'] = 1;
            $bottomCate = db("GoodsCate")->field('id,name,path')->where($map)->order('sort asc')->select();
   
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
                $goods = db("Goods")->field('id,name,picname,price,say,marketPrice')->where('id',$value['goodsID'])->find();
                $flash[$key]['name'] = $goods['name'];

                $goods['picname'] = getThumb($goods["picname"],400,400);           
                $flash[$key]['picname'] = getRealUrl($goods['picname']);
                $flash[$key]['marketPrice'] = $goods['marketPrice'];
                $flash[$key]['rmb'] = round($value['price']*$this->rate,1);
            }

            $flashTime = checkFlashTime($config['flashTime']);

            $flashH5 = [];
            $q = [];
            $i = 1;
            foreach ($flash as $key => $value) {
                array_push($q,$flash[$key]);
                if ($i%3==0) {
                    array_push($flashH5,$q);
                    $q = [];
                }
                $i++;
            }
            if (count($q)>0) {
                array_push($flashH5,$q);
            }
            
            returnJson(1,'success',[
            	'ad'=>$ad,
            	'category'=>$cate,
                'bottomCate'=>$bottomCate,
                'three'=>$three,
                'commend'=>$commend,
                'flash'=>$flash,
                'flashH5'=>$flashH5,
                'flashTime'=>$flashTime,
            	'rate'=>$this->rate,
            	'hotkey'=>explode(",", $config['hotkey']),
            ]);
        }
    }	

    public function keyword(){
        if (request()->isPost()) {            
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $config = tpCache('member');
            returnJson(1,'success',[
                'hotkey'=>explode(",", $config['hotkey']),
            ]);
        }
    }
}