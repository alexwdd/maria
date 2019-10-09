<?php
namespace app\mobile\controller;
use think\Request;
use think\Db;

class Index extends Home
{
	public function index()
	{
		$map['model'] = 1;
		$cate = db('Category')->cache(true)->where($map)->select();
		$this->assign('cate',$cate);
		return view();
	}

	public function getData(){
		if (request()->isPost()) {
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $cid = input('post.cid');
            $keyword = input('post.keyword');
            $page = input('post.page/d',1); 
          
            if ($cid!=0 && is_numeric($cid)) {
                $map['cid'] = $cid;
            }
            if ($keyword!='') {
                $map['title'] = array('like','%'.$keyword.'%');
            }
            
            $pagesize =10;
            $firstRow = $pagesize*($page-1); 

            $map['del'] = 0;
            $map['status'] = 1;
            $obj = db('Article');
            $count = $obj->where($map)->count();
            $totalPage = ceil($count/$pagesize);
            if ($page < $totalPage) {
                $next = 1;
            }else{
                $next = 0;
            }

            $list = $obj->field('id,title,picname,hit,createTime')->where($map)->limit($firstRow.','.$pagesize)->order('id desc')->select();
            foreach ($list as $key => $value) {
                if($value['url']==''){
                    $list[$key]['url'] = url('index/view','id='.$value['id']);
                } 
                if ($value['picname']!='') {
                    $image = explode(",", $value['picname']);
                    foreach ($image as $k => $val) {
                        $image[$k] = getThumb($val,180,120);
                    }
                    $list[$key]['picname'] = $image;
                    if (count($image)>1) {
                        $list[$key]['image'] = 1;
                    }else{
                        $list[$key]['image'] = 0;
                    }
                }else{
                    $list[$key]['image'] = 99;
                }
                $list[$key]['createTime'] = date("Y-m-d",$value['createTime']);
            }

            $this->assign("list",$list);
            $html = $this->fetch();
            returnJson(1,'success',['next'=>$next,'html'=>$html]);
        }
	}

    public function view(){
        $id = input('id');
        if ($id=='' || !is_numeric($id)) {
            $this->error('参数错误');
        }

        $map['id'] = $id;
        $map['status'] = 1;
        $map['del'] = 0;        
        $list = db('Article')->where($map)->find();
        if (!$list) {
            $this->error('文章不存在');
        }else{
            db('Article')->where($map)->setInc('hit');

            if($list['keyword']==''){
                $list['keyword'] = config('site.keywords');
            }

            if($list['intr']==''){
                $list['intr'] = config('site.description');
            }

            $this->assign('list',$list);

            unset($map);
            $map['id'] = array('neq',$list['id']);
            $map['status'] = 1;
            $map['del'] = 0;
            $map['cid'] = $list['cid'];
            $about = db("Article")->where($map)->field('id,title,picname,hit,createTime')->limit(5)->order('id desc')->select();
            foreach ($about as $key => $value) {
                if($value['url']==''){
                    $about[$key]['url'] = url('index/view','id='.$value['id']);
                } 
                
                if ($value['picname']!='') {
                    $image = explode(",", $value['picname']);
                    $about[$key]['picname'] = $image;
                    if (count($image)>1) {
                        $about[$key]['image'] = 1;
                    }else{
                        $about[$key]['image'] = 0;
                    }
                }else{
                    $about[$key]['image'] = 99;
                }
            }
            $this->assign('about',$about);
            return view();
        }
    }

    public function search(){
        if (request()->isPost()) {
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $keyword = input('post.keyword');
            if ($keyword!='') {
                $map['title'] = array('like','%'.$keyword.'%');
            }
            $map['del'] = 0;
            $map['status'] = 1;
            $obj = db('Article');
            $list = $obj->field('id,title,picname,hit,createTime')->where($map)->order('id desc')->select();
            foreach ($list as $key => $value) {
                if($value['url']==''){
                    $list[$key]['url'] = url('index/view','id='.$value['id']);
                }                
                if ($value['picname']!='') {
                    $image = explode(",", $value['picname']);
                    $list[$key]['picname'] = $image;
                    if (count($image)>1) {
                        $list[$key]['image'] = 1;
                    }else{
                        $list[$key]['image'] = 0;
                    }
                }else{
                    $list[$key]['image'] = 99;
                }
                $list[$key]['createTime'] = date("Y-m-d",$value['createTime']);
            }
            returnJson(1,'success',['data'=>$list]);
        }else{
            return view();
        }        
    }
}