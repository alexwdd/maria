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

    public function pub(){
        if (request()->isPost()) {
            if (!checkRequest()) {die;}            
            $data = input('post.');
            $data['memberID'] = $this->user['id'];

            if ($data['def']==1) {
                db('Address')->where(array('memberID'=>$this->user['id']))->setField('def',0);
            }

            $res = model('Address')->saveData( $data );
            if ($res['code']==1) {
                $this->success('操作成功',url('address/index'),['id'=>$res['msg']]);
            }else{
                $this->error($res['msg']);
            }
        }else{
            $id = input('param.id');
            if($id!='' && is_numeric($id)){
                $map['id'] = $id;
                $map['memberID'] = $this->user['id'];
                $list = db("Address")->where($map)->find();
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
        db('Address')->where($map)->delete();
        $this->redirect($_SERVER['HTTP_REFERER']);
    }
}
