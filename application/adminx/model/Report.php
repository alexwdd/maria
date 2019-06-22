<?php
namespace app\adminx\model;
use think\Session;

class Report extends Admin
{  
    public function getCreateTimeAttr($value)
    {
        return date("Y-m-d H:i:s",$value);
    }

    //获取列表
    public function getList(){
        $total = $this->count();
        $pageSize = input('post.page',20);

        $field = input('post.field','id');
        $order = input('post.order','desc');
        $keyword = input('post.keyword');

        if ($keyword!='') {
            $map['name|title'] = array('like','%'.$keyword.'%');
        }
        $map['id'] = array('gt',0);
        $pages = ceil($total/$pageSize);
        $pageNum = input('post.limit',1);
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

    //群发
    public function batchPub(array $data = []){
        if($data['title']==''){
            return info('请输入医院',0);
        }
        if($data['date']==''){
            return info('请输入检查时间',0);
        }
        if($data['item']==''){
            return info('请选择检查项目',0);
        }

        $map['disable'] = 0;
        $list = db("Member")->field('id,name')->where($map)->select();

        $tempArr = [];
        foreach ($list as $key => $value) {
            $reportData = [
                'memberID'=>$value['id'],
                'name'=>$value['name'],
                'title'=>$data['title'],
                'date'=>$data['date'],
                'abnormal'=>'',
                'createTime'=>time()
            ];
            $reportID = db("Report")->insertGetId($reportData);
            if ($reportID) {
                foreach ($data['item'] as $k => $val) {
                    $temp = [
                        'reportID'=>$reportID,
                        'memberID'=>$value['id'],
                        'name'=>$val
                    ];
                    array_push($tempArr,$temp);
                }
            }
        }
        db("ReportItem")->insertAll($tempArr);
        return info('操作成功',1);
    }    

    public function del($id){
        return $this->destroy($id);
    }
}
