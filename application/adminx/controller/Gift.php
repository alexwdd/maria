<?php
namespace app\adminx\controller;

class Gift extends Admin {

	#列表
	public function index() {
		if (request()->isPost()) {
			$result = model('Gift')->getList();
			echo json_encode($result);
    	}else{
	    	return view();
    	}
	}

	#添加
	public function pub() {
		if(request()->isPost()){
	        $data = input('post.');
	        return model('Gift')->saveData( $data );
		}else{
			$id = input('get.id');
			if ($id!='' || is_numeric($id)) {
				$list = model('Gift')->find($id);
				if (!$list) {
					$this->error('信息不存在');
				}
			}
			$this->assign('list', $list);
			return view();
		}
	}

	#删除
	public function del() {
		$id = explode(",",input('post.id'));
		if (count($id)==0) {
			$this->error('请选择要删除的数据');
		}else{
			if(model('Gift')->del($id)){
				$this->success("操作成功");
			}else{
				$this->error('操作失败');
			}
		}
	}

	public function order(){
		if (request()->isPost()) {
			$result = model('GiftOrder')->getList();
			echo json_encode($result);
    	}else{
	    	return view();
    	}
	}

	#添加
	public function info() {
		if(request()->isPost()){
	        $data = input('post.');
	        return model('GiftOrder')->edit( $data );
		}else{
			$id = input('get.id');			
			$list = model('GiftOrder')->find($id);
			if (!$list) {
				$this->error('信息不存在');
			}			
			$this->assign('list', $list);
			return view();
		}
	}

	#删除
	public function delOrder() {
		$id = explode(",",input('post.id'));
		if (count($id)==0) {
			$this->error('请选择要删除的数据');
		}else{
			if(model('GiftOrder')->del($id)){
				$this->success("操作成功");
			}else{
				$this->error('操作失败');
			}
		}
	}
}
?>