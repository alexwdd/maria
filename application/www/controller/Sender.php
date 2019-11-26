<?php
namespace app\www\controller;
use think\Request;
use think\Db;

class Sender extends User
{
    public function index(){ 
        $map['memberID'] = $this->user['id'];
        $list = db('Sender')->where($map)->order('id desc')->select();
        $this->assign('list',$list);
        return view();
    }

    public function pub(){
        if (request()->isPost()) {
            if (!checkRequest()) {die;}            
            $data = input('post.');
            $data['memberID'] = $this->user['id'];
            $res = model('Sender')->saveData( $data );
            if ($res['code']==1) {
                $this->success('操作成功',url('sender/index'),['id'=>$res['msg']]);
            }else{
                $this->error($res['msg']);
            }
        }else{
            $id = input('param.id');
            if($id!='' && is_numeric($id)){
                $map['id'] = $id;
                $map['memberID'] = $this->user['id'];
                $list = db("Sender")->where($map)->find();
                if(!$list){
                    $this->error("信息不存在");
                }
                $this->assign('list',$list);
            }
            return view();
        }        
    }  

    public function del(){
        $id = input('param.id');
        $map['id']=$id;
        $map['memberID'] = $this->user['id'];
        db('Sender')->where($map)->delete();
        $this->redirect($_SERVER['HTTP_REFERER']);
    }
}
