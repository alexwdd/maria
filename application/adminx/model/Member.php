<?php
namespace app\adminx\model;
use think\Request;

class Member extends Admin
{
    public function getCreateTimeAttr($value)
    {
        return date("Y-m-d H:i:s",$value);
    }

    public function getActiveTimeAttr($value)
    {
        if ($value==0) {
            return '<span style="color:#f00">未激活</span>';
        }else{
            return date("Y-m-d H:i:s",$value);
        }        
    }
    
    //获取列表
    public function getList(){
        $total = $this->count();
        $pageSize = input('post.pageSize',20);

        $field = input('post.field','id');
        $order = input('post.order','desc');
        $keyword = input('post.keyword');
        $depart  = input('post.depart');
        $junxian  = input('post.junxian');
        $disable  = input('post.disable');

        $map['id'] = array('gt',0);
        if($keyword!=''){
            $map['name|mobile'] = $keyword;
        }
        if($disable!=''){
            $map['disable'] = $disable;
        }
        if($junxian!=''){
            $map['junxian'] = $junxian;
        }
        if($depart!=''){
            $map['depart'] = $depart;
        }
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
        $validate = validate('Member');
        if(!$validate->scene('add')->check($data)) {
            return array('code'=>0,'msg'=>$validate->getError());
        }
        $request= Request::instance(); 
        $data['password'] = md5($data['password']);
        $data['createTime'] = time();
        $data['createIP'] = $request->ip();
        $this->allowField(true)->save($data);
        if($this->id > 0){ 
            return array('code'=>1,'msg'=>'操作成功');
        }else{
            return array('code'=>0,'msg'=>'操作失败');
        }
    }

    //更新
    public function edit(array $data = [])
    {  
        $validate = validate('Member');
        if(!$validate->scene('edit')->check($data)) {
            return array('code'=>0,'msg'=>$validate->getError());
        }
        if ($data['password']!='') {
            $data['password'] = md5($data['password']);
        }else{
            unset($data['password']);
        }
        $this->allowField(true)->save($data,['id'=>$data['id']]);
        if($this->id > 0){
            return array('code'=>1,'msg'=>'操作成功');
        }else{
            return array('code'=>0,'msg'=>'操作失败');
        }
    }

    //删除
    public function del($id){
        return $this->destroy($id);
    }
}
