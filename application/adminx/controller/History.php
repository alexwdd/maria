<?php
namespace app\adminx\controller;

class History extends Admin {

	#列表
	public function index() {
		if (request()->isPost()) {
			$result = model('History')->getList();
			echo json_encode($result);
    	}else{
	    	return view();
    	}
	}

	#添加
	public function pub() {
		if(request()->isPost()){
	        $data = input('post.');
	        return model('History')->saveData( $data );
		}else{
			$id = input('get.id');
			if ($id!='' || is_numeric($id)) {
				$list = model('History')->find($id);
				$itemArr = explode(",",$list['item']);
				if (!$list) {
					$this->error('信息不存在');
				}
				$this->assign('itemArr',$itemArr);
			}
			$this->assign('list', $list);

			$item = db("OptionCate")->order('sort asc,id asc')->select();
			$this->assign('item', $item);
			return view();
		}
	}

	public function tpl(){
		$id = input('param.id');
		if ($id=='' || !is_numeric($id)) {
			$this->error("参数错误");
		}
		$list = db("ReportItem")->where('hID',$id)->select();

		$objPHPExcel = new \PHPExcel();    
        $objPHPExcel->setActiveSheetIndex(0)
            ->setCellValue('A1', '报告ID')
            ->setCellValue('B1', '用户ID')
            ->setCellValue('C1', '姓名')
            ->setCellValue('D1', '分类ID')
            ->setCellValue('E1', '分类')
            ->setCellValue('F1', '检查项目')
            ->setCellValue('G1', '检查结果')
            ->setCellValue('H1', '是否异常(1是0否)')
            ->setCellValue('I1', '备注');
        foreach($list as $k => $v){
            $num=$k+2;
            $name = db("Member")->where("id",$v['memberID'])->value("name");
            $objPHPExcel->setActiveSheetIndex(0)
                ->setCellValue('A'.$num, $v['reportID'])                
                ->setCellValue('B'.$num, $v['memberID'])
                ->setCellValue('C'.$num, $name)
                ->setCellValue('D'.$num, $v['id'])
                ->setCellValue('E'.$num, $v['name'])
                ->setCellValue('F'.$num, '')
                ->setCellValue('G'.$num, '')
                ->setCellValue('H'.$num, '')
                ->setCellValue('I'.$num, '');
        }

        $objPHPExcel->getActiveSheet()->setTitle('模板');
        $objPHPExcel->setActiveSheetIndex(0);

        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="'.date("Y-m-d",time()).'模板.xls"');
        header('Cache-Control: max-age=0');
        $objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
        $objWriter->save('php://output');
	}

	#删除
	public function del() {
		$id = explode(",",input('post.id'));
		if (count($id)==0) {
			$this->error('请选择要删除的数据');
		}else{
			if(model('History')->del($id)){
				$this->success("操作成功");
			}else{
				$this->error('操作失败');
			}
		}
	}
}
?>