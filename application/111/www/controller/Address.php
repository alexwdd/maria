<?php
namespace app\www\controller;
use think\Request;
use think\Db;

class Address extends User
{
    public function index(){ 
        $map['memberID'] = $this->user['id'];
        $list = db('Address')->where($map)->order('id desc')->select();
        $this->assign('list',$list);
        return view();
    }

    public function add(){
        if (request()->isPost()) {
            if (!checkRequest()) {die;}            
            $data = input('post.');
            $data['memberID'] = $this->user['id'];
            $res = model('Address')->add( $data );
            if ($res) {
                $this->success('操作成功',url('address/index'),['id'=>$res['msg']]);
            }else{
                $this->error('操作失败');
            }
        }else{
            return view();
        }        
    }   

    public function edit(){
        if (request()->isPost()) {
            if (!checkRequest()) {die;}    
            $data = input('post.');
            $data['memberID'] = $this->user['id'];        
            $res = model('Address')->edit( $data );        
            if ($res['code']==1) {
                $this->success('操作成功',url('address/index'));
            }else{
                $this->error('操作失败');
            }
        }else{
            $id = input('param.id');
            unset($map);
            $map['id'] = $id;
            $map['memberID'] = $this->user['id'];
            $address = db('Address')->where($map)->find();
            $this->assign('address',$address);
            return view();
        }
    }  

    public function del(){
        $id = input('param.id');
        $map['id']=$id;
        $map['memberID'] = $this->user['id'];
        db('Address')->where($map)->delete();
        $this->redirect($_SERVER['HTTP_REFERER']);
    }
}
