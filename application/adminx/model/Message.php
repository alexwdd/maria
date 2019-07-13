<?php
namespace app\adminx\model;
use think\Session;

class Message extends Admin
{  
    public function getCreateTimeAttr($value)
    {
        return date("Y-m-d H:i:s",$value);
    }

    //获取列表
    public function getList(){        
        $pageNum = input('post.page',1);
        $pageSize = input('post.limit',config('page.size'));

        $field = input('post.field','id');
        $order = input('post.order','desc');
        $keyword = input('post.keyword');

        if ($keyword!='') {
            $map['title'] = array('like','%'.$keyword.'%');
        }
        $map['id'] = array('gt',0);

        $total = $this->where($map)->count();
        $pages = ceil($total/$pageSize);
        $firstRow = $pageSize*($pageNum-1); 
        $list = $this->where($map)->order($field.' '.$order)->limit($firstRow.','.$pageSize)->select();
        if($list) {
            $list = collection($list)->toArray();
            foreach ($list as $key => $value) {
                $list[$key]['name'] = db("Member")->where('id',$value['memberID'])->value("name");
            }
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

    //获取单条
    public function find($id){
        $list = $this->get($id);
        if ($list) {
            return $list;
        }else{
            $this->error('信息不存在');
        }
    }

    //单发
    public function pub(array $data = []){
        if($data['title']==''){
            return info('请输入标题',0);
        }
        if($data['content']==''){
            return info('请输入正文',0);
        }
        if($data['memberID']==''){
            return info('请选择收件人',0);
        }
        $data['createTime'] = time();
        $data['read'] = 0;
        $res = $this->allowField(true)->save($data);
        if($res){
            return info('操作成功',1);
        }else{
            return info('操作失败',0);
        }
    } 

    //群发
    public function batchPub(array $data = []){
        if($data['title']==''){
            return info('请输入标题',0);
        }
        if($data['content']==''){
            return info('请输入正文',0);
        }
        $map['disable'] = 0;
        $list = db("Member")->where($map)->column('id');
        $batchData = [];
        foreach ($list as $key => $value) {
            $temp = [
                'memberID'=>$value,
                'title'=>$data['title'],
                'content'=>$data['content'],
                'read'=>0,
                'createTime'=>time()
            ];
            array_push($batchData,$temp);
        }
        $res = $this->allowField(true)->saveAll($batchData);
        if($res){
            return info('操作成功',1);
        }else{
            return info('操作失败',0);
        }
    }    

    public function del($id){
        return $this->destroy($id);
    }
}
