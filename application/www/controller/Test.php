<?php
namespace app\www\controller;
use app\common\controller\Base;

class Test extends Base {

	public function index()
	{
        $list = db("Goods")->select();
        foreach ($list as $key => $value) {
            $cate = db("GoodsCate")->where('id',$value['cid'])->find();
            if($cate){
                $temp['goodsID'] = $value['id'];
                $temp['bigID'] = $cate['fid'];
                $temp['cateID'] = $cate['id'];
                $temp['cateName'] = $cate['name'];
                $temp['catePath'] = $cate['path'];
                db("GoodsCateid")->insert($temp); 
            }
            
            if($value['cid1']>0){
                $cate = db("GoodsCate")->where('id',$value['cid1'])->find();
                if($cate){
                    $temp['goodsID'] = $value['id'];
                    $temp['bigID'] = $cate['fid'];
                    $temp['cateID'] = $cate['id'];
                    $temp['cateName'] = $cate['name'];
                    $temp['catePath'] = $cate['path'];
                    db("GoodsCateid")->insert($temp); 
                }
            }
        }
	}
}
