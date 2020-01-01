<?php
namespace app\adminx\controller;

class Jiesuan extends Admin {

	#列表
	public function index() {
		if(request()->isPost()){
			$date = input('post.date');
			if ($date=='') {
				$endDate = date('Y-m-d');
				$starDate = strtotime("$endDate -10 day");
				$endDate = strtotime($endDate);
			}else{
				$date = explode(" - ", $date);
	            $starDate = strtotime($date[0]);
	            $endDate = strtotime($date[1]);
			}

			$arr = [];
			for($i=$endDate; $i>=$starDate; $i-=86400){
				$map['createTime'] = array('between',array($i,$i+86399));
				$map['status'] = array('in',[1,2,3]);
				$list = db("Order")->field('total,wallet,money,inprice')->where($map)->select();
				$total = 0;
				$wallet = 0;
				$money = 0;
				$inprice = 0;
				$lirun = 0;
				foreach ($list as $key => $value) {
					$total += $value['total'];
					$wallet += $value['wallet'];
					$money += $value['money'];
					$inprice += $value['inprice'];
					$lirun += $value['money'] - $value['inprice']; 
				}
				array_push($arr,[
					'date'=>date("Y-m-d",$i),
					'total'=>$total,
					'wallet'=>$wallet,
					'money'=>$money,
					'inprice'=>$inprice,
					'lirun'=>$lirun,
				]);
			}

			$result = array(
	            'code'=>0,
	            'data'=>$arr,
	            "count"=>count($arr)
	        );
	        echo json_encode($result); 
		}else{
			return view();
		}		
	}
}
?>