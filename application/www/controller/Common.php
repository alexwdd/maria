<?php
namespace app\www\controller;

use app\common\controller\Base;
use think\Cookie;

class Common extends Base {

    public $user;
    public $flash;
    public $api = 'http://127.0.0.10';

	public function _initialize(){
        parent::_initialize();

        $this->assign('rate',$this->rate);

        if (config('site.isClose')==1) {
            echo '<html><head><meta charset="utf-8" /><title></title><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"></head><body><h1>'.config('site.closeInfo').'</h1></body></html>';die;
        }

        //今日抢购的商品
        if(cache('flash')){
            $this->flash = cache('flash');
        }else{
            unset($map);
            $beginToday=mktime(0,0,0,date('m'),date('d'),date('Y')); 
            $endToday=mktime(0,0,0,date('m'),date('d')+1,date('Y'))-1;
            $map['startDate'] = array('elt',$beginToday);
            $map['endDate'] = array('egt',$endToday);
            $flash = db("Flash")->field('goodsID,number,price,spec,pack')->where($map)->order('endDate asc')->select();
            cache('flash',$flash,60);
            $this->flash = $flash;

            unset($map);
            $map['endDate'] = array('lt',time());
            $goodsID = db("Flash")->where($map)->column('goodsID');
            $where['id'] = array('in',$goodsID);
            $where['fid'] = array('in',$goodsID);
            db("Goods")->whereOr($where)->setField('flash',0);
        }

        if(cache('help')){
            $help = cache('help');
        }else{
            $help = db("Category")->where('fid',8)->order('sort asc,id asc')->select();
            foreach ($help as $key => $value) {
                unset($map);
                $map['cid'] = $value['id'];
                $map['status'] = 1;
                $map['del'] = 0;
                $help[$key]['article'] = db("Article")->field('id,title')->where($map)->order('sort asc,id asc')->select();
            }            
        }
        $this->assign('help',$help);

        if(cache('link')){
            $link = cache('link');
        }else{
            $link = db("Link")->order('sort asc,id asc')->select();                    
        }
        $this->assign('link',$link);

        if (!Cookie::get('flag','www')) {
            $user = ['id'=>0];
        }else{
            $flag = think_decrypt(Cookie::get('flag','www'),config('DATA_CRYPT_KEY'));
            $flagArr = explode(',', $flag);
            if ($flagArr[1]!=request()->ip()) {
                $user = ['id'=>0];
            }else{
                $user = db('Member')->where(array('token'=>$flagArr[0],'disable'=>0))->find();      
                if (!$user) {
                    $user = ['id'=>0];
                }  
            }
        }
        $this->user = $user;
        $this->assign('user',$this->user);      

        if(cache("cate")){
            $cate = cache("cate");          
        }else{
            $cate = db("GoodsCate")->field('id,name,path,picname')->where('fid',0)->order('sort asc')->select();
            foreach ($cate as $key => $value) {
                $cate[$key]['child'] = db("GoodsCate")->field('id,name,path,picname')->where('fid',$value['id'])->order('sort asc')->select();
            }
            cache("cate",$cate);
        }
        $this->assign('globalCate',$cate);  
        
        //空信息       
        $this->assign('empty','<div class="empty"><img src="/application/www/view/common/image/empty.png" /><p>空空如也~</p></div>');
    }
    
}