<?php
namespace app\adminx\controller;

class Version extends Admin {

	#列表
	public function index() {
		if (request()->isPost()) {
			$result = model('Version')->getList();
			echo json_encode($result);
    	}else{
	    	return view();
    	}
	}

	#添加
	public function pub() {
		if(request()->isPost()){
	        $data = input('post.');
	        return model('Version')->saveData( $data );
		}else{
			$id = input('get.id');
			if ($id!='' || is_numeric($id)) {
				$list = model('Version')->find($id);
				if (!$list) {
					$this->error('信息不存在');
				}
			}else{
				$list['status'] = 0;
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
            if(model('Version')->del($id)){
                $this->success("操作成功");
            }else{
                $this->error('操作失败');
            }
        }
	}
}
?>