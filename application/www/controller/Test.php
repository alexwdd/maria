<?php
namespace app\www\controller;
use app\common\controller\Base;
use think\Db;

class Test extends Base {

	public function index()
	{
        die;
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

    public function sql(){
        /*$res = db('Goods')
        ->where('id','IN',function($query){
            $query->table('pm_goods_cateid')->where('bigID',1)->field('goodsID');
        })
        ->limit(10)->select();*/
        
        $ids = db("GoodsCateid")->where('bigID',1)->column('goodsID');
        $map['id'] = ['in',$ids];
        $res = db("Goods")->where($map)->limit(10)->select();
        dump($res);
    }
}
