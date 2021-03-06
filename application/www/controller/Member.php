<?php
namespace app\www\controller;
use think\Request;
use Endroid\QrCode\QrCode;

class Member extends User
{
	//用户信息
	public function index()
	{
        $data = ['token'=>$this->user['token']];
        $result = $this->https_post($this->api.'/api/account/index',$data);
        $result = json_decode($result,true);
        $this->user = $result['body']['user'];
        $this->assign('user',$result['body']['user']);
        $this->assign('fund',$result['body']['fund']);
        $this->assign('jifen',$result['body']['jifen']);
        $this->assign('lastMonth',$result['body']['lastMonth']);
        $this->assign('fina',$result['body']['fina']);
		return view();
	}

    //个人资料
    public function info(){
        if (request()->isPost()) { 
            if(!checkFormDate()){$this->error('未知错误');}
            $qq = input('post.qq');
            $wechat = input('post.wechat');
            $name = input('post.name');
            $data = [
                'wechat'=>$wechat,
                'name'=>$name
            ];
            $map['id'] = $this->user['id'];
            $r = db('Member')->where($map)->update($data);
            if ($r) {
                $this->success("操作成功",url('index'));
            }else{
                $this->error('操作失败');
            }
        }else{
            return view();
        }
    }
	

    public function coupon(){        
        $type = input('param.type',0);
        $page = input('post.page/d',1);
        $pagesize = input('post.pagesize',10);
        $firstRow = $pagesize*($page-1); 

        $map['status'] = 0;
        $map['endTime'] = array('gt',time());
        $map['memberID'] = $this->user['id'];
        $number1 = db("CouponLog")->where($map)->count();

        unset($map);
        $map['status'] = 1;
        $map['memberID'] = $this->user['id'];
        $number2 = db("CouponLog")->where($map)->count();

        unset($map);
        $map['status'] = 0;
        $map['endTime'] = array('lt',time());
        $map['memberID'] = $this->user['id'];
        $number3 = db("CouponLog")->where($map)->count();
        $this->assign('number1',$number1);
        $this->assign('number2',$number2);
        $this->assign('number3',$number3);

        unset($map);
        if($type==1){//未使用
            $map['status'] = 0;
            $map['endTime'] = array('gt',time());
        }elseif($type==2){//已使用
            $map['status'] = 1;
        }elseif($type==3){//已失效
            $map['status'] = 0;
            $map['endTime'] = array('lt',time());
        }
        $map['memberID'] = $this->user['id'];

        //查询数据
        $list = db('CouponLog')->where($map)->order('endTime desc,id desc')->paginate(20,false,['query'=>request()->param()])->each(function($item, $key){

            if($item['status']==1){
                $item['type'] = '<span style="color:blue;font-size:12px">已使用</span>';
            }else{
                if($item['endTime'] > time()){
                    $item['type'] = '未使用';
                }else{
                    $item['type'] = '<span style="color:#ccc;font-size:12px">已失效</span>';
                }
            }
            

            if($item['useTime']>0){
                $item['useTime'] = date("Y-m-d H:i:s",$item['useTime']);
            }else{
                $item['useTime'] = '-';
            }


            $item['endTime'] = date("Y-m-d H:i:s",$item['endTime']);
            $item['createTime'] = date("Y-m-d H:i:s",$item['createTime']);
            if($item['goodsID']!=''){
                $ids = explode(",",$item['goodsID']);
                unset($map);
                $map['id'] = array('in',$ids);
                $map['show'] = 1;
                $goods = db("Goods")->field('id as goodsID,name')->where($map)->select();
                $item['goods'] = $goods;
            }
            return $item;
        });

        $page = $list->render();
        $this->assign('list',$list);  
        $this->assign('page',$page);  
        $this->assign('type',$type);
        return view();
    }


    //单页面
    public function about(){
        $id = input('id',1);
        if ($id=='' || !is_numeric($id)) {
            $this->error('参数错误');
        }
        $list = db("Onepage")->where('id',$id)->find();
        if (!$list) {
            $this->error('信息不存在');
        }
        $this->assign('list',$list);
        return view();
    }

    //帮助
    public function help(){
        $map['del'] = 0;
        $map['status'] = 1;
        $map['cid'] = 88;
        $list = db('Article')->where($map)->order('id desc')->select();
        $this->assign('list',$list);
        return view();
    }

    public function feedback(){
        $map['memberID'] = $this->user['id'];
        $obj = db('Feedback');
        $list = $obj->where($map)->order('id desc')->select();
        $this->assign('list', $list);
        return view();
    }

    public function write(){
        if (request()->isPost()) {
            if (!checkRequest()) {die;}
            
            $data = input('post.');
            $data['memberID'] = $this->user['id'];
            $res = model('Feedback')->saveData( $data );
            if ($res) {
                $this->success('操作成功',url('Member/feedback'));
            }else{
                $this->error('操作失败');
            }
        }else{
            return view();
        }
    }

    public function finance(){
        if (request()->isPost()) {
            $type = input('param.type');
            if ($type!='') {
                $map['type'] = $type;
            }            
            $map['memberID'] = $this->user['id'];
            if ($createDate!='') {
                $date = explode(" - ", $createDate);
                $startDate = $date[0];
                $endDate = $date[1];
                $map['createTime'] = array('between',array(strtotime($startDate),strtotime($endDate)+86399));
            } 
            $result = model('Finance')->getDetailList($map);
            echo json_encode($result['data']);
        }else{
            $money = $this->getUserMoney($this->user['id']);
            $this->assign('money',$money);
            return view();
        }
    }

    public function fav(){
        $data = ['token'=>$this->user['token'],'pagesize'=>100];
        $result = $this->https_post($this->api.'/api/account/fav',$data);
        $result = json_decode($result,true);
        $this->assign('list',$result['body']['data']);
        return view();
    }

    public function delfav(){
        $id = input('param.id');
        $data = ['token'=>$this->user['token'],'ids'=>$id];
        $result = $this->https_post($this->api.'/api/account/delFav',$data);
        $result = json_decode($result,true);
        if($result['code']==1){
            $this->redirect($_SERVER['HTTP_REFERER']);
        }
    }

    public function doCoupon(){
        $couponID = input('param.couponID');
        $data = ['token'=>$this->user['token'],'couponID'=>$couponID];
        $result = $this->https_post($this->api.'/api/account/doCoupon',$data);
        echo $result;
    }
}
