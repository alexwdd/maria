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

            unset($map);
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
            }

            returnJson(1,'success',['category'=>$list,'commendCate'=>$commendCate,'brand'=>$brand]);
        }
    }

    public function lists(){
        if(request()->isPost()){
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $path = input('post.path');
            $cid = input('post.cid');
            $keyword = input('param.keyword');
            $page = input('post.page/d',1);
            $pagesize = input('post.pagesize',10);
            $firstRow = $pagesize*($page-1); 

            if($cid!=''){
                $map['cid|cid1'] = $cid;
            }
            if($path!=''){
                $map['path|path1'] = array('like',$path.'%');
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

            $list = $obj->field('id,name,picname,price,say,marketPrice')->where($map)->limit($firstRow.','.$pagesize)->order('id desc')->select();
            foreach ($list as $key => $value) {
                $list[$key]['picname'] = getRealUrl($value['picname']);
                $list[$key]['rmb'] = $value['price']*$this->rate;
            }
            returnJson(1,'success',['next'=>$next,'data'=>$list]);
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
            foreach ($list as $key => $value) {                
                $goods = db("Goods")->field('id,name,picname,price,say,marketPrice')->where('id',$value['goodsID'])->find();             
                $sellNumber = $this->getFlashNumber($value['goodsID']);

                $list[$key]['per'] = ($sellNumber/$value['number'])*100;
                $list[$key]['picname'] = getRealUrl($goods['picname']);
                $list[$key]['marketPrice'] = $goods['marketPrice'];
                $list[$key]['name'] = $goods['name'];
                $list[$key]['say'] = $goods['say'];
                $list[$key]['rmb'] = $value['price']*$this->rate;

                unset($list[$key]['spec']);
                unset($list[$key]['pack']);
                unset($list[$key]['number']);
            }

            $flashTime = checkFlashTime($config['flashTime']);
            returnJson(1,'success',['next'=>$next,'data'=>$list,'flashTime'=>$flashTime]);
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