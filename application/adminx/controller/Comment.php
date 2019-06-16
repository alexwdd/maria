<?php
namespace app\adminx\controller;

class Comment extends Admin {

	#列表
	public function index() {
		if (request()->isPost()) {
			$result = model('ArticleComment')->getList();
			echo json_encode($result);
    	}else{
	    	return view();
    	}
	}

	#通过审核
	public function status() {
		$id = explode(",",input('post.id'));
		if (count($id)==0) {
			$this->error('请选择要删除的数据');
		}else{
			$map['id'] = array('in',$id);
			db('ArticleComment')->where($map)->setField('status',1);
			$this->success("操作成功");
		}
	}

	#删除
	public function del() {
		$id = explode(",",input('post.id'));
		if (count($id)==0) {
			$this->error('请选择要删除的数据');
		}else{
			if(model('ArticleComment')->del($id)){
				$this->success("操作成功");
			}else{
				$this->error('操作失败');
			}
		}
	}
}
?>