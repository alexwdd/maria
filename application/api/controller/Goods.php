<?php
namespace app\api\controller;

class Goods extends Common {

    public function category(){
        if(request()->isPost()){
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $map['fid'] = 0;
            $list = db('GoodsCate')->field('id,name')->where($map)->order('sort asc,id desc')->select();
            foreach ($list as $key => $value) {
                $child = db('GoodsCate')->field('id,name,picname')->where('fid',$value['id'])->order('sort asc,id desc')->select();
                foreach ($child as $k => $val) {
                    $child[$k]['picname'] = getRealUrl($val['picname']);
                }
                $list[$key]['child'] = $child;
            }

            /*unset($map);
            $map['comm'] = 1;
            $commendCate = db("GoodsCate")->field('id,name,path,picname')->where($map)->select();
            foreach ($commendCate as $key => $value) {
                $commendCate[$key]['picname'] = getRealUrl($value['picname']);
            }

            unset($map);
            $map['comm'] = 1;
            $brand = db("Brand")->field('id,name,logo')->where($map)->select();
            foreach ($brand as $key => $value) {
                $brand[$key]['logo'] = getRealUrl($value['logo']);
            }*/

            $config = tpCache("member");
            returnJson(1,'success',['category'=>$list,'hotkey'=>$config['hotkey']]);
        }
    }

    public function brand(){
        if(request()->isPost()){
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $cid = input('post.cid');
            $keyword = input('param.keyword');
            $comm = input('param.comm');
            $page = input('post.page/d',1);
            $pagesize = input('post.pagesize',10);
            $firstRow = $pagesize*($page-1); 

            if($comm!=''){
                $map['comm'] = $comm;
            }
            if($cid!=''){
                $map['cid|cid1'] = $cid;
            }
            if($keyword!=''){
                $map['name'] = array('like','%'.$keyword.'%');
            }
            $obj = db('Brand');
            $count = $obj->where($map)->count();
            $totalPage = ceil($count/$pagesize);
            if ($page < $totalPage) {
                $next = 1;
            }else{
                $next = 0;
            }
            $list = $obj->field('id,name,logo,py')->where($map)->limit($firstRow.','.$pagesize)->order('py asc')->select();
            foreach ($list as $key => $value) {
                $value['logo'] = getThumb($value['logo'],200,200);
                $list[$key]['logo'] = getRealUrl($value['logo']);
            }
            returnJson(1,'success',['next'=>$next,'data'=>$list]);
        }
    }

    public function brandWall(){
        if(request()->isPost()){
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $map['cate'] = 4;
            $list = db('OptionItem')->field('id as cid,name')->where($map)->order('sort asc,id asc')->select();
            foreach ($list as $key => $value) {
                $child = db('Brand')->field('id,name,logo')->where('cid',$value['cid'])->order('sort asc,py asc')->limit(5)->select();
                foreach ($child as $k => $val) {
                    $child[$k]['logo'] = getRealUrl($val['logo']);
                }
                $list[$key]['child'] = $child;
            }
            returnJson(1,'success',['brand'=>$list]);
        }
    }

    public function lists(){
        if(request()->isPost()){
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $path = input('post.path');
            $cid = input('post.cid');
            $brandID = input('post.brandID');
            $keyword = input('param.keyword');
            $comm = input('param.comm');
            $page = input('post.page/d',1);
            $pagesize = input('post.pagesize',10);
            $firstRow = $pagesize*($page-1); 

            if($comm!=''){
                $map['comm'] = $comm;
            }
            if($brandID!=''){
                $map['brandID'] = $brandID;
            }
            if($cid!=''){
                $map['cid|cid1'] = $cid;
                $cate = db("GoodsCate")->field('id,path,name')->where('id',$cid)->find();
            }
            if($path!=''){
                $map['path|path1'] = array('like',$path.'%');
                $cate = db("GoodsCate")->field('id,path,name')->where('path',$path)->find();
            }
            if($cate){
                $child = db("GoodsCate")->field('id,path,name')->where('fid',$cate['id'])->select();
            }
            if($keyword!=''){
                $map['name|short|keyword'] = array('like','%'.$keyword.'%');
            }
            $map['show'] = 1;
            $obj = db('Goods');
            $count = $obj->where($map)->count();
            $totalPage = ceil($count/$pagesize);
            if ($page < $totalPage) {
                $next = 1;
            }else{
                $next = 0;
            }

            $list = $obj->field('id,name,picname,price,say,marketPrice,comm,empty,tehui,flash,baoyou')->where($map)->limit($firstRow.','.$pagesize)->order('id desc')->select();
            foreach ($list as $key => $value) {
                $list[$key]['picname'] = getRealUrl($value['picname']);
                $list[$key]['rmb'] = round($value['price']*$this->rate,2);
            }
            returnJson(1,'success',['cate'=>$cate,'child'=>$child,'next'=>$next,'data'=>$list]);
        }
    }

    public function push(){
        if(request()->isPost()){
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $config = tpCache('member');

            $type = input('post.type',1);
            $cid = input('post.cid');
            $keyword = input('param.keyword');
            $page = input('post.page/d',1);
            $pagesize = input('post.pagesize',10);
            $firstRow = $pagesize*($page-1); 

            if($keyword!=''){
                $map['goodsName'] = array('like','%'.$keyword.'%');
            }
            if(!in_array($type,[1,2,3])){
                returnJson(0,'type参数错误');
            }
            $map['cateID'] = $type;

            if($cid!=''){
                $map['cid'] = $cid;
            }

            $obj = db('GoodsPush');
            $count = $obj->where($map)->count();
            $totalPage = ceil($count/$pagesize);
            if ($page < $totalPage) {
                $next = 1;
            }else{
                $next = 0;
            }
            $list = $obj->field('goodsID')->where($map)->limit($firstRow.','.$pagesize)->order('id desc')->select();
            if($list){
                $cateID = $obj->where($map)->group('cid')->column("cid");    
                $where['id'] = array('in',$cateID);
                $cate = db('GoodsCate')->field('id,path,name')->where($where)->select();
            }
            
            foreach ($list as $key => $value) {                
                $goods = db("Goods")->field('id,name,picname,price,say,price,marketPrice,comm,empty,tehui,flash,baoyou')->where('id',$value['goodsID'])->find();  

                $list[$key]['picname'] = getRealUrl($goods['picname']);
                $list[$key]['goodsName'] = $goods['name'];
                $list[$key]['price'] = $goods['price'];
                $list[$key]['marketPrice'] = $goods['marketPrice'];
                $list[$key]['say'] = $goods['say'];
                $list[$key]['comm'] = $goods['comm'];
                $list[$key]['empty'] = $goods['empty'];
                $list[$key]['tehui'] = $goods['tehui'];
                $list[$key]['flash'] = $goods['flash'];
                $list[$key]['baoyou'] = $goods['baoyou'];
                $list[$key]['rmb'] = round($goods['price']*$this->rate,1);
            }
            returnJson(1,'success',['next'=>$next,'data'=>$list,'cate'=>$cate]);
        }
    }

    public function flash(){
        if(request()->isPost()){
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $config = tpCache('member');

            $type = input('post.type',1);
            $cid = input('post.cid');
            $keyword = input('param.keyword');
            $page = input('post.page/d',1);
            $pagesize = input('post.pagesize',10);
            $firstRow = $pagesize*($page-1); 

            if($keyword!=''){
                $map['goodsName'] = array('like','%'.$keyword.'%');
            }
            if(!in_array($type,[1,2])){
                returnJson(0,'type参数错误');
            }
            if($cid!=''){
                $map['cid'] = $cid;
            }

            $beginToday=mktime(0,0,0,date('m'),date('d'),date('Y')); 
            $endToday=mktime(0,0,0,date('m'),date('d')+1,date('Y'))-1;
            if ($type==2) {
                $beginToday = $beginToday+86400;
                $endToday = $endToday+86400;
            }

            $map['startDate'] = array('elt',$beginToday);
            $map['endDate'] = array('egt',$endToday);

            $obj = db('Flash');
            $count = $obj->where($map)->count();
            $totalPage = ceil($count/$pagesize);
            if ($page < $totalPage) {
                $next = 1;
            }else{
                $next = 0;
            }
            $list = $obj->field('goodsID,goodsName,price,spec,pack,number')->where($map)->limit($firstRow.','.$pagesize)->order('id desc')->select();
            if($list){
                $cateID = $obj->where($map)->group('cid')->column("cid");
                $where['id'] = array('in',$cateID);
                $cate = db('GoodsCate')->field('id,path,name')->where($where)->select();
            }
            
            foreach ($list as $key => $value) {                
                $goods = db("Goods")->field('id,name,picname,price,say,marketPrice,comm,empty,tehui,flash,baoyou')->where('id',$value['goodsID'])->find();             
                $sellNumber = $this->getFlashNumber($value['goodsID']);

                $list[$key]['per'] = floor(($sellNumber/$value['number'])*100);
                $list[$key]['picname'] = getRealUrl($goods['picname']);
                $list[$key]['marketPrice'] = $goods['marketPrice'];
                $list[$key]['say'] = $goods['say'];
                $list[$key]['comm'] = $goods['comm'];
                $list[$key]['empty'] = $goods['empty'];
                $list[$key]['tehui'] = $goods['tehui'];
                $list[$key]['flash'] = $goods['flash'];
                $list[$key]['baoyou'] = $goods['baoyou'];
                $list[$key]['rmb'] = round($value['price']*$this->rate,2);

                unset($list[$key]['spec']);
                unset($list[$key]['pack']);
                unset($list[$key]['number']);
            }

            $flashTime = checkFlashTime($config['flashTime']);
            returnJson(1,'success',['next'=>$next,'data'=>$list,'flashTime'=>$flashTime,'cate'=>$cate]);
        }
    }

    public function info(){
        if(request()->isPost()){
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $goodsID = input('post.goodsID');
            if ($goodsID=='' || !is_numeric($goodsID)) {
                returnJson(0,'参数错误');
            }
            $map['id'] = $goodsID;
            $map['show'] = 1;
            $list = db('Goods')->field('id,fid,name,picname,price')->where($map)->find();
            if (!$list) {
                returnJson('-1','不存在的商品');
            }
       
            //参数规格
            if($list['fid']>0){
                $fid = $list['fid'];
            }else{
                $fid = $list['id'];
            }
            $filter_spec = $this->get_spec($fid);
            $this->assign('filter_spec',$filter_spec);
            
            $result = $this->getGoodsDetail($list,$this->flash);

            $list = $result['goods'];
            $spec = $result['spec'];
            $pack = $result['pack'];

            $list['rmb'] = number_format($this->rate*$list['price'],1);  
            returnJson(0,'success',['goods'=>$list,'pack'=>$pack,'spec'=>$spec,'filter_spec'=>$filter_spec]);
        }
    }

    public function detail(){
        if(request()->isPost()){
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $goodsID = input('post.goodsID');
            if ($goodsID=='' || !is_numeric($goodsID)) {
                returnJson(0,'参数错误');
            }
            $map['id'] = $goodsID;
            $map['show'] = 1;
            $list = db('Goods')->field('id,fid,name,picname,image,price,content,say,intr')->where($map)->find();
            if (!$list) {
                returnJson('-1','不存在的商品');
            }

            if ($list['image']=='') {
                $list['image'] = array($list['picname']);            
            }else{
                $list['image'] = explode(",", $list['image']);
            }
            foreach ($list['image'] as $key => $value) {
                $list['image'][$key] = getRealUrl($value);
            }                  
       
            //参数规格
            if($list['fid']>0){
                $fid = $list['fid'];
            }else{
                $fid = $list['id'];
            }
            $filter_spec = $this->get_spec($fid);
            $this->assign('filter_spec',$filter_spec);
            
            $result = $this->getGoodsDetail($list,$this->flash);

            $list = $result['goods'];
            $spec = $result['spec'];
            $pack = $result['pack'];

            $list['rmb'] = number_format($this->rate*$list['price'],1);  
            $list['content'] = htmlspecialchars_decode($list['content']); 

            returnJson(0,'success',['goods'=>$list,'pack'=>$pack,'spec'=>$spec,'filter_spec'=>$filter_spec]);
        }
    }

    public function get_spec($goods_id){
        //商品规格 价钱 库存表 找出 所有 规格项id
        $keys = db('GoodsSpecPrice')->where("goods_id", $goods_id)->column("GROUP_CONCAT(`key` ORDER BY store_count desc SEPARATOR '_') ");
        $filter_spec = array();
        if ($keys[0]) {
            $keys = str_replace('_', ',', $keys[0]);
            $sql = "SELECT a.name,a.sort,b.* FROM pm_model_spec AS a INNER JOIN pm_model_spec_item AS b ON a.id = b.specID WHERE b.id IN($keys) ORDER BY b.id";

            $filter_spec2 = \think\Db::query($sql);
            foreach ($filter_spec2 as $key => $val) {
                $filter_spec[$val['name']][] = array(
                    'item_id' => $val['id'],
                    'item' => $val['item']
                );
            }
        }
        return $filter_spec;
    }
}