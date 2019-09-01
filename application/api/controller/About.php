<?php
namespace app\api\controller;

class About extends Common
{
    public function index(){
    	if (request()->isPost()) {                        
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $id = input('post.id');
            if ($id=='' || !is_numeric($id)) {
                returnJson(0,'参数错误');
            }
            
            $map['id'] = $id;
            $list = db('Onepage')->field('title,content')->where($map)->find();
            if ($list) {                
                returnJson(1,'success',['data'=>$list]);
            }else{
                returnJson(0,'信息不存在');
            }
           
        }
    }

    public function version(){ 
        if (request()->isPost()) {                        
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $type = input('post.type');
            if($type!=''){
                $map['type'] = $type;
            }
            $list = db('Version')->field('version,desc,url,status,createTime')->order('id desc')->where($map)->select();
            foreach ($list as $key => $value) {
                $list[$key]['createTime'] = date("Y-m-d H:i:s",$value['createTime']);
            }
            returnJson(1,'success',array('lists'=>$list));
        }
    }
}