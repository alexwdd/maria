<?php
namespace app\www\controller;
use think\Request;

class Order extends User
{

	public function index()
	{
        $keyword = input('param.keyword');
        $type = input('param.type',0);
        $page = input('post.page/d',1);
        $pagesize = input('post.pagesize',10);
        $firstRow = $pagesize*($page-1); 

        if($keyword!=''){
            $map['order_no'] = $keyword;
        }
        switch ($type) {
            case 1:
                $map['status'] = 0;
                $map['endTime'] = array('gt',0);
                break;
            case 2:
                $map['status'] = 0;
                $map['isCut'] = 1;
                $map['endTime'] = 0;
                break;
            case 3:
                $map['status'] = 1;   
                break;
            case 4:
                $map['status'] = 2;   
                break;
            case 5:
                $map['status'] = 3;   
                break;
            case 6:
                $map['status'] = 99;   
                break;
        }
        $config = tpCache('member');
        $map['memberID'] = $this->user['id'];
        $map['hide'] = 0;
        //查询数据
        $list = db('Order')->where($map)->order('id desc')->paginate(10,false,['query'=>request()->param()])->each(function($item, $key){

            if($item['isCut']==1){
                if($item['endTime']==0){
                    $cutEndTime = $item['createTime']+($config['hour']*3600)-time();
                    if($cutEndTime<0){
                        $cutEndTime=0;
                    }
                    $item['cutEndTime'] = $cutEndTime;
                }else{
                    $item['cutEndTime'] = 0;
                }
                $item['cutMoney'] = db("OrderCut")->where('orderID',$item['id'])->sum('money');
            }

            if($item['front']=='' || $item['back']==''){
                $item['upload'] = 0;
            }else{
                $item['upload'] = 1;
            }

            unset($where);
            $where['orderID'] = $item['id'];
            $bag = db("OrderBaoguo")->field('image')->where($where)->select();     
            foreach ($bag as $k => $val) {       
                if($val['image']=='') {
                    $item['image'] = 0;
                    break;
                }else{
                    $item['image'] = 1;
                }         
            }
            
            $goods = db("OrderCart")->field('goodsID,name,picname,price,number,spec')->where('orderID',$item['id'])->select();   
            $item['goods'] = $goods;
            return $item;
        });
        $page = $list->render();
        $this->assign('list',$list);  
        $this->assign('page',$page);  
        $this->assign('type',$type);
		return view();
	}

    public function del(){
        $id = input('param.id');
        $data = ['token'=>$this->user['token'],'id'=>$id];
        $result = $this->https_post($this->api.'/api/order/del',$data);
        $result = json_decode($result,true);
        if($result['code']==1){
            $this->redirect($_SERVER['HTTP_REFERER']);
        }
    }

    public function hide(){
        $id = input('param.id');
        $data = ['token'=>$this->user['token'],'id'=>$id];
        $result = $this->https_post($this->api.'/api/order/hide',$data);
        $result = json_decode($result,true);
        if($result['code']==1){
            $this->redirect($_SERVER['HTTP_REFERER']);
        }
    }

    public function detail(){
        $id = input('param.id');
        $data = ['token'=>$this->user['token'],'id'=>$id];
        $result = $this->https_post($this->api.'/api/order/detail',$data);
        $result = json_decode($result,true);
        $this->assign('order',$result['body']['order']);
        $this->assign('baoguo',$result['body']['baoguo']);
        return view();
    }
}
