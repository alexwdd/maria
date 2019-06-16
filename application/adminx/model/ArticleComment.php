<?php
namespace app\adminx\model;
use think\Session;

class ArticleComment extends Admin
{  
    public function getCreateTimeAttr($value)
    {
        return date("Y-m-d H:i:s",$value);
    }

    //获取列表
    public function getList(){
        $total = $this->count();
        $pageSize = input('post.pageSize',20);

        $field = input('post.field','id');
        $order = input('post.order','desc');
        $keyword = input('post.keyword');

        if ($keyword!='') {
            $map['content'] = array('like','%'.$keyword.'%');
        }
        $map['id'] = array('gt',0);
        $pages = ceil($total/$pageSize);
        $pageNum = input('post.pageNum',1);
        $firstRow = $pageSize*($pageNum-1); 
        $list = $this->where($map)->order($field.' '.$order)->limit($firstRow.','.$pageSize)->select();
        if($list) {
            $list = collection($list)->toArray();
        }
        $result = array(
            'code'=>0,
            'data'=>$list,
            "pageNum"=>$pageNum,
            "pageSize"=>$pageSize,
            "pages"=>$pageSize,
            "count"=>$total
        );
        return $result;
    }

    public function del($id){
        return $this->destroy($id);
    }
}
