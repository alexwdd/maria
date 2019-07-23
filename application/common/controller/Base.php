<?php
namespace app\common\controller;
use think\Controller;
use think\Request;
use think\Db;

class Base extends Controller {

    public function _initialize(){
    	$request= Request::instance();

    	$module = $request->module();
        $THEME_PATH = '/application/'.$module.'/view/';
        define('RES', $THEME_PATH . 'common');

        $config = tpCache('basic');
        config('site',$config);        
    }

    //商品限时抢购已销售数量
    public function getFlashNumber($goodsID){
        $beginToday=mktime(0,0,0,date('m'),date('d'),date('Y')); 
        $endToday=mktime(0,0,0,date('m'),date('d')+1,date('Y'))-1;
        $where['goodsID'] = $goodsID;
        $where['createTime'] = array('between',[$beginToday,$endToday]);
        $number = db('OrderDetail')->where($where)->sum('number');
        return $number;
    }

    //商品是否在限时抢购中
    public function checkInFlash($goodsID,$flash){
        foreach ($flash as $key => $value) {
            if($value['goodsID'] == $goodsID){
                return $value;
                break;
            }
        }
        return false;
    }

    //返回商品的价格，套餐，规格型号
    public function getGoodsDetail($goods,$flashArr){
        //判断是套餐的ID还是商品的ID
        if($goods['fid']>0){
            $fid = $goods['fid'];
        }else{
            $fid = $goods['id'];
        }

        //获取套餐价格
        $pack = db("Goods")->field('id,name,price')->where('fid',$fid)->select();

        //参数规格
        $spec  = db('GoodsSpecPrice')->where("goods_id", $fid)->column("key,key_name,price,item_id");  

        //是否今日抢购
        if($flash = $this->checkInFlash($fid,$flashArr)){
            $sellNumber = $this->getFlashNumber($goods['goodsID']);
            $per = ($sellNumber/$flash['number'])*100;
            $per = 100;
            
            if($per>100){
                $per = 100;
            }
            $goods['per'] = $per;
            $flash['spec'] = unserialize($flash['spec']);
            $flash['pack'] = unserialize($flash['pack']);            
            $goods['isFlash'] = 1;

            if($per<100){
                $goods['price'] = $flash['price'];

                foreach ($flash['pack'] as $key => $value) {
                    foreach ($pack as $k => $val) {
                        if($val['id'] == $value['packID']){
                            $pack[$k]['price'] = $value['price'];
                        }
                    }
                }

                foreach ($flash['spec'] as $key => $value) {
                    foreach ($spec as $k => $val) {
                        if($val['item_id'] == $value['specID']){
                            $spec[$k]['price'] = $value['price'];
                        }
                    }
                }
            }
        }else{
            $goods['isFlash'] = 0;
        }
        return ['goods'=>$goods,'pack'=>$pack,'spec'=>$spec];
    }

    public function getGoodsPrice($goods,$specID,$flashArr){
        //判断是套餐的ID还是商品的ID
        if($goods['fid']>0){
            $fid = $goods['fid'];
        }else{
            $fid = $goods['id'];
        }
        $flash = $this->checkInFlash($fid,$flashArr);//判断是否在今日抢购中
        $spec = [];
        if($goods['fid']==0){
            if($specID>0){//有规格选项
                $spec = db("GoodsSpecPrice")->field('key_name,price')->where('id',$specID)->find();
                if($flash){
                    $flash['spec'] = unserialize($flash['spec']);
                    foreach ($flash['spec'] as $k => $val) {
                        if($val['item_id'] == $specID){
                            $price = $value['price'];
                        }
                    }
                }else{
                    $price = $spec['price'];
                }                        
            }else{
                if($flash){
                    $price = $flash['price'];
                }else{
                    $price = $goods['price'];
                }                        
            }
        }else{//是套餐
            if($flash){
                $price = $flash['price'];
            }else{
                $price = $goods['price'];
            }                   
        } 

        return ['price'=>$price,'spec'=>$spec];
    }

    public function https_post($url,$data = null){
        $ch = curl_init();
        $header = "Accept-Charset: utf-8";
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
        curl_setopt($ch, CURLOPT_SSLVERSION, 1);
        curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (compatible; MSIE 5.01; Windows NT 5.0)');
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($ch, CURLOPT_AUTOREFERER, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);      
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $output = curl_exec($ch);       
        return $output;
    }    
}
