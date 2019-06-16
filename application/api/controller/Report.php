<?php
namespace app\api\controller;

class Report extends Auth {    

    public function index(){
        if(request()->isPost()){
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $page = input('post.page/d',1); 
            $pagesize =10;
            $firstRow = $pagesize*($page-1); 

            $map['memberID'] = $this->user['id'];
            $obj = db('Report');
            $count = $obj->where($map)->count();
            $totalPage = ceil($count/$pagesize);
            if ($page < $totalPage) {
                $next = 1;
            }else{
                $next = 0;
            }

            $list = $obj->field('id,name,title,date')->where($map)->limit($firstRow.','.$pagesize)->order('id desc')->select();            
            returnJson(1,'success',['next'=>$next,'data'=>$list]);
        }
    }

    public function info(){
        if(request()->isPost()){
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $id = input('post.id');
            if ($id=='' || !is_numeric($id)) {
                returnJson(0,'参数错误');
            }
            
            $map['id'] = $id;
            $map['memberID'] = $this->user['id'];
            $list = db('Report')->where($map)->find();
            if ($list) {
                $list['item'] = db("ReportItem")->where("reportID",$id)->select();
                foreach ($list['item'] as $key => $value) {
                    $list['item'][$key]['info'] = db("ReportDetail")->where("itemID",$value['id'])->select();
                }

                $abnormal = db("ReportDetail")->where(["reportID"=>$id,'abnormal'=>1])->count();
                returnJson(1,'success',['data'=>$list,'abnormal'=>$abnormal]);
            }else{
                returnJson(0,'信息不存在');
            }
        }
    }
}