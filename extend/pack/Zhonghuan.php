<?php
namespace pack;

class Zhonghuan {

	private $cart;				//购物车商品
	private $baoguoArr = [];
	private $province;
	private $extendArea = ['新疆维吾尔自治区','西藏自治区'];
	private $maxNumber = 10; 	//单个包裹中最多商品个数
	private $maxWeight = 3; 	//单个包裹最大重量(kg)
	private $maxPrice = 180; 	//单个包裹最大金额

	/*
	$cart中的trueNumber是实际单品数量，比如商品A单品数量是3个，如果购物车中有2个，单品数量总数是6，这里的trueNumber不是数据库中单个商品的trueNumber！！！
	*/
	public function __construct($cart,$province) {
		foreach ($cart as $key => $value) {
			unset($cart[$key]['number']);
			unset($cart[$key]['memberID']);
		}

		$cart = array_values($cart);//创建索引
		$this->cart = $cart;
		$this->province = trim($province);
		header("Content-type: text/html;charset=utf-8");
	}

	public function getBaoguo(){
		while ($this->cart) {
			$baoguo = [
				'type'=>0, 				//类型
	            'totalNumber'=>0, 		//总数量
	            'totalWeight'=>0, 		//商品总重量
	            'totalWuliuWeight'=>0,	//包装后总重量
	            'totalPrice'=>0,  		//商品中金额
	            'yunfei'=>0,	  		//运费
	            'extend'=>0,
	            'kuaidi'=>'',
	            'status'=>1,
	            'goods'=>[],
	        ];
	        
	        foreach ($this->cart as $key => $value) {
	            $number = $this->canInsert($baoguo,$value,false);
	            if ($number) {
	            	//可以放入包裹中商品的单品总数量
	            	$number = $number>$value['trueNumber'] ? $value['trueNumber'] : $number;
	            	$value['trueNumber'] = $number;
	            	$baoguo['totalNumber'] += $number;
	            	$baoguo['totalWeight'] += $number*$value['weight'];
	            	$baoguo['totalWuliuWeight'] += $number*$value['wuliuWeight'];
	            	$baoguo['totalPrice'] += $number*$value['price'];
	            	$baoguo['type'] = $value['typeID'];
	                array_push($baoguo['goods'],$value);	                
	                $this->deleteGoods($value,$number);
	            } 
	        }
	        array_push($this->baoguoArr,$baoguo);
		}

		//dump($this->baoguoArr);die;
 		
 		foreach ($this->baoguoArr as $key => $value) {
			$wuliuWeight = ceil($this->baoguoArr[$key]['totalWuliuWeight']*10);
			$this->baoguoArr[$key]['totalWuliuWeight'] = number_format($wuliuWeight/10,1);
	
			$brandName = getBrandName($value['type']);
	        $danjia = getDanjia($value['type']);	        
	        if (in_array($value['type'],[1,2,3])){//奶粉类走澳邮
	        	$this->baoguoArr[$key]['kuaidi'] = $brandName;	
	        	if($this->baoguoArr[$key]['totalWuliuWeight']<1){
	        		$this->baoguoArr[$key]['yunfei'] = (1-$this->baoguoArr[$key]['totalWuliuWeight'])*$danjia['price'];
	        	}else{
	        		$this->baoguoArr[$key]['yunfei'] = 0;
	        	}
	        	$config = tpCache('kuaidi');
	        	$this->baoguoArr[$key]['inprice'] = $this->baoguoArr[$key]['totalWuliuWeight']*$config['inprice1'];
	        }else{
	        	$this->baoguoArr[$key]['kuaidi'] = $brandName.'($'.$danjia['price'].'/kg)';
	        	if($this->baoguoArr[$key]['totalWuliuWeight']<1){
	        		$this->baoguoArr[$key]['yunfei'] = (1-$this->baoguoArr[$key]['totalWuliuWeight'])*$danjia['price'];
	        	}else{
	        		$this->baoguoArr[$key]['yunfei'] = 0;
	        	}	        	
	        	$this->baoguoArr[$key]['inprice'] = $this->baoguoArr[$key]['totalWuliuWeight']*$danjia['inprice'];
	        }
	        
	        if ($this->inExtendArea()) {
	        	$this->baoguoArr[$key]['extend'] = $this->baoguoArr[$key]['totalWuliuWeight']*$danjia['otherPrice'];
	        }
		}	
		return $this->baoguoArr;
	}

	//判断当前商品是否能放入包裹
	/*flag 是否判断被插入的商品必须要与包裹的类型相同*/
	private function canInsert($baoguo,$item,$flag=true){

		$thisMaxNumber = $this->maxNumber;
		//12是类特殊的包裹，只有同一类商品的话允许超过上限
		if($this->canOutMaxNumber($baoguo,$item)){
			$thisMaxNumber = 15;
		}
		
		//总数不能超过包裹商品数量
		if ($baoguo['totalNumber']>=$thisMaxNumber) {			
			return false;
		}		
		
		if ($flag) {	
			//商品是否与当前包裹类型相同
			if ($baoguo['type']>0) {
				if ($baoguo['type']!=$item['typeID']) {
					return false;
				}
			}
		}

		if(!$this->canHybrid($baoguo,$item)){
			return false;
		}

		//当前待处理的商品包裹类型
		$type = $this->getBaoguoType($item);

		//本类型商品还能放几个
		$itemNumber = $this->getTypeNumber($baoguo,$item);
		$tNum = $type['max'] - $itemNumber['typeNumber'];
		if ($tNum < 1) {
			return false;
		}

		//单品允许放几个
		$sNum = $type['same'] - $itemNumber['sameNumber'];
		if ($sNum < 1) {
			return false;
		}

		if ($tNum < $sNum) { //得到可以放进包裹的数量
			$number = $tNum;
		}else{
			$number = $sNum;
		}

		//总数不能超过包裹商品数量
		if (($baoguo['totalNumber'] + $number > $thisMaxNumber)) {
			$number = $thisMaxNumber - $baoguo['totalNumber'];
		}

		if (!in_array($item['typeID'],[1,2,3])) {//奶粉类不考虑重量和金额
			//是否超过总重量，在不超过总重量的情况下最多可以放几个商品
			$weightNumber = $this->getMaxNumber($this->maxWeight,$baoguo['totalWeight'],$item['weight']);

			$number = $number > $weightNumber ? $weightNumber : $number;

			//是否超过总金额，在不超过总金额的情况下最多可以放几个商品
			$priceNumber = $this->getMaxNumber($this->maxPrice,$baoguo['totalPrice'],$item['price']);

			$number = $number > $priceNumber ? $priceNumber : $number;
		}
		return $number;
	}

	//处理type这类特殊的商品，只有同一类商品的话允许超过上限
	private function canOutMaxNumber($baoguo,$item){
		$flag = true;
		foreach ($baoguo['goods'] as $key => $value) {
			if ($value['typeID'] != 12) {				
				$flag = false;
				break;
			}
		}
		if($item['typeID']!=12){
			$flag = false;
		}
		return $flag;
	}
	
	//判断与当前包裹中的商品能否混寄
	private function canHybrid($baoguo,$item){
		foreach ($baoguo['goods'] as $key => $value) {
			$arr = $this->getBaoguoType($value);
			if (!in_array($item['typeID'],$arr['can']) && $item['typeID']!=$value['typeID']) {
				return false;
				break;
			}
		}
		return true;
	}

	//获取当前商品包裹类型
	private function getBaoguoType($item){
		foreach (config('BAOGUO_ZH') as $key => $value) {
			if ($item['typeID'] == $value['id']) {
				return $value;
				break;
			}
		}
	}

	//根据重量，金额当前包裹可以放几个商品
	private function getMaxNumber($max,$baoguo,$item){
		if ($item <= 0) {
			return 999;
		}else{
			$number = ($max - $baoguo) / $item;
			return floor($number);
		}
	}

	//包裹中当前类型商品有几个
	private function getTypeNumber($baoguo,$item){
		$typeNumber = 0; //同类型数量
		$sameNumber = 0; //单品数量
		foreach ($baoguo['goods'] as $key => $value) {
			if ($value['typeID']==$item['typeID']) {
				$typeNumber += $value['trueNumber'];
			}
			if ($value['id']==$item['id']) {
				$sameNumber += $value['trueNumber'];
			}
		}
		return ['sameNumber'=>$sameNumber,'typeNumber'=>$typeNumber];
	}

	//购物车中减少商品
	private function deleteGoods($item,$number){	
		foreach ($this->cart as $key => $value) {
			if ($value['id']==$item['id']){
				if ($number >= $value['trueNumber']) {					
					array_splice($this->cart,$key,1);
				}else{
					$this->cart[$key]['trueNumber'] -= $number;
				}
				break;
			}
		}
	}

	//判断是否在偏远地区
	private function inExtendArea(){
		if (in_array($this->province,$this->extendArea)) {
			return true;
		}else{
			return false;
		}
	}

	private function getNaifen($goodsType,$number){
		if ($goodsType==1 || $goodsType==2) {//大罐奶粉	    
	        return 6;
	    }elseif($goodsType==3){//小罐奶粉
	        return 7;
	    }
	}
}
?>