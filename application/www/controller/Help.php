<?php
namespace app\www\controller;

class Help extends Common
{
	public function index()
	{
    	$help = db("Category")->where('fid',8)->order('sort asc,id asc')->select();
        foreach ($help as $key => $value) {
            $map['cid'] = $value['id'];
            $map['status'] = 1;
            $map['del'] = 0;
            $help[$key]['article'] = db("Article")->field('id,title')->where($map)->order('sort asc,id asc')->select();
        }
        $this->assign('help',$help);

        $id = input('param.id');
        if($id=='' || !is_numeric($id)){
            $id = $help[0]['article'][0]['id'];
        }
        unset($map);
        $map['id'] = $id;
        $map['status'] = 1;
        $map['del'] = 0;
        $article = db("Article")->where($map)->find();
        if(!$article){
            $this->error("信息不存在");
        }
        $this->assign('article',$article);
		return view();
	}    
}
