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
	

    public function bind(){
        if(request()->isPost()){
            if (!checkRequest()) {
                $this->error('未知错误');
            }

            $oldpassword = trim(input('post.oldpassword'));
            $password = trim(input('post.password'));
            $cpassword = trim(input('post.repassword'));
            $id = $this->user['id'];
            $oldpwd = $this->user['password'];

            if($oldpwd!=think_encrypt($oldpassword,config('DATA_CRYPT_KEY'))){
                $this->error('原登录密码错误！');
            }

            if($password!=$cpassword){
                $this->error('两次密码不一致！');  
            }

            $user=db('Member');
            $rsuser=$user->where(array('id'=>$id))->find();
            if(!$rsuser){
                $this->error('该用户不存在！');
            }
            $data['password']=think_encrypt($password,config('DATA_CRYPT_KEY'));
            $rs = $user->where(array('id'=>$id))->update($data);            
            $this->success('修改成功！',url('Member/index'));
        }else{
            return view();
        }
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
}
