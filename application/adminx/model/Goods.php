<?php
namespace app\adminx\model;

class Goods extends Admin
{
    protected $auto = ['updateTime','cid','path','cid1','path1','image'];
    protected $insert = ['createTime'];  

    public function setUpdateTimeAttr(){
        return time();
    }
    public function setCreateTimeAttr(){
        return time();
    }
    public function setCidAttr(){
        $class = explode(',', input('post.cid'));
        return $class[0];
    }
    public function setPathAttr(){        
        $class = explode(',', input('post.cid'));
        return $class[1];
    }
    public function setCid1Attr(){
        if (input('post.cid1')!='') {
            $class = explode(',', input('post.cid1'));
            return $class[0];
        }else{
            return 0;
        }        
    }
    public function setPath1Attr(){   
        if (input('post.cid1')!='') {
            $class = explode(',', input('post.cid1'));
            return $class[1];
        }else{
            return '';
        }
    }
    public function setImageAttr(){       
        $image = input('post.image/a');
        if ($image) {
            return implode(",", input('post.image/a'));
        }        
    }
    public function getServerAttr($value){       
        return explode(",", $value);
    }
    public function getCreateTimeAttr($value){
        return date("Y-m-d H:i:s",$value);
    }
    public function getUpdateTimeAttr($value){
        return date("Y-m-d H:i:s",$value);
    }

    //获取列表
    public function getList(){
        $pageNum = input('post.page',1);
        $pageSize = input('post.limit',config('page.size'));
        $field = input('post.field','id');
        $order = input('post.order','desc');
        $path = input('path');
        $keyword  = input('keyword');

        if($path!=''){
            $map['path'] = array('like', $path.'%');
        }
        if($keyword!=''){
            $map['name|short|keyword'] = array('like', '%'.$keyword.'%');
        }

        $total = $this->where($map)->count();
        $pages = ceil($total/$pageSize);
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

    //获取单条
    public function find($id){
        $list = $this->get($id);
        if ($list) {
            return $list;
        }else{
            $this->error('信息不存在');
        }
    }

    //添加更新数据
    public function saveData( $data )
    {
        $server = input('post.server/a');
        if ($server) {
            $data['server'] = implode(",", input('post.server/a'));
        }else{
            $data['server'] = '';
        }   

        if( isset( $data['id']) && !empty($data['id'])) {
            $result = $this->edit( $data );
        } else {
            $result = $this->add( $data );
        }
        return $result;
    }
    //添加
    public function add(array $data = [])
    {
        $validate = validate('Goods');
        if(!$validate->check($data)) {
            return info($validate->getError());
        }
        $this->allowField(true)->save($data);
        if($this->id > 0){
            $data['id'] = $this->id;
            return info('操作成功',1,'',$data);
        }else{
            return info('操作失败',0);
        }
    }
    //更新
    public function edit(array $data = [])
    {
        $validate = validate('Goods');
        if(!$validate->check($data)) {
            return info($validate->getError());
        }    
        $this->allowField(true)->save($data,['id'=>$data['id']]);
        if($this->id > 0){
            return info('操作成功',1,'',$data);
        }else{
            return info('操作失败',0);
        }
    }

    //删除
    public function del($id){
        return $this->destroy($id);
    }
}
