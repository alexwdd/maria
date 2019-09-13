<?php
namespace app\common\controller;
use think\Controller;
use think\Request;
use think\Db;

class Base extends Controller {

    public $rate;

    public function _initialize(){
    	$request= Request::instance();

    	$module = $request->module();
        $THEME_PATH = '/application/'.$module.'/view/';
        define('RES', $THEME_PATH . 'common');

        $config = tpCache('basic');
        config('site',$config);   

        $this->rate = $this->getRate();     
    }

    //获取用户财产信息
    public function getUserMoney($userid){
        $finance = db('Finance');
        $map['memberID'] = $userid;
        $list = $finance->field('type,money')->where($map)->select(); 
        $signPoint = 0;
        $buyPoint = 0;
        $inMoney = 0;
        $outMoney = 0;
        $inFund = 0;
        $outFund = 0;
        $fundToMoney = 0;
        $clearJifen = 0;

        foreach ($list as $key => $value) {
            if ($value['type']==1) {
                $signPoint += $value['money'];
            }
            if ($value['type']==2) {
                $buyPoint += $value['money'];
            }
            if ($value['type']==3) {
                $inMoney += $value['money'];
            } 
            if ($value['type']==4) {
                $outMoney += $value['money'];
            }  
            if ($value['type']==5) {
                $inFund += $value['money'];
            }  
            if ($value['type']==6) {
                $outFund += $value['money'];
            }  
            if ($value['type']==7) {
                $fundToMoney += $value['money'];
            } 
            if ($value['type']==8) {
                $clearJifen += $value['money'];
            } 
        }

        $point = $signPoint + $buyPoint - $clearJifen;
        $money = $inMoney + $fundToMoney - $outMoney;
        $fund = $inFund - $outFund;
        return array(       
            'point' => $point,
            'money'=>$money,
            'fund'=>$fund
        );
    }

    //商品限时抢购已销售数量
    public function getFlashNumber($goodsID){
        $beginToday=mktime(0,0,0,date('m'),date('d'),date('Y')); 
        $endToday=mktime(0,0,0,date('m'),date('d')+1,date('Y'))-1;
        $where['goodsID'] = $goodsID;
        $where['createTime'] = array('between',[$beginToday,$endToday]);
        $number = db('OrderDetail')->where($where)->sum('number');
        return $number;
    }

    //商品是否在限时抢购中
    public function checkInFlash($goodsID,$flash){
        $config = tpCache("member");
        $time = $config['flashTime'];
        $time = explode("-",$time);
        $start = strtotime(date($time[0]));
        $end = strtotime(date($time[1]));
        if (time()>$start && time()<$end) {//是否在抢购时间范围        
            foreach ($flash as $key => $value) {
                if($value['goodsID'] == $goodsID){
                    //判断是否抢光了
                    $sellNumber = $this->getFlashNumber($goodsID);
                    if($sellNumber < $value['number']){
                        $per = ($sellNumber/$value['number'])*100;          
                        if($per>100){
                            $per = 100;
                        }
                        $value['per'] = $per;
                        return $value;
                        break;
                    }
                }
            }
            return false;
        }else{
            return false;
        }
    }

    //返回商品的价格，套餐，规格型号
    public function getGoodsDetail($goods,$flashArr){
        $config = tpCache('member');
        //判断是套餐的ID还是商品的ID
        if($goods['fid']>0){
            $fid = $goods['fid'];
        }else{
            $fid = $goods['id'];
        }

        //获取套餐价格
        $pack = db("Goods")->field('id,name,price')->where('fid',$fid)->select();

        //参数规格
        $spec  = db('GoodsSpecPrice')->where("goods_id", $fid)->column("key,key_name,price,item_id,spec_img");  

        //是否今日抢购
        if($flash = $this->checkInFlash($fid,$flashArr)){
            $goods['per'] = $flash['per'];
            $flash['spec'] = unserialize($flash['spec']);
            $flash['pack'] = unserialize($flash['pack']); 

            $goods['price'] = $flash['price'];
            foreach ($flash['pack'] as $key => $value) {
                foreach ($pack as $k => $val) {
                    if($val['id'] == $value['packID']){
                        $pack[$k]['price'] = $value['price'];
                    }
                }
            }
            foreach ($flash['spec'] as $key => $value) {
                foreach ($spec as $k => $val) {
                    if($val['item_id'] == $value['specID']){
                        $spec[$k]['price'] = $value['price'];
                    }
                }
            }
            $goods['isFlash'] = 1;            
        }else{
            $goods['isFlash'] = 0;
        }       
        foreach ($spec as $key => $value) {
            $spec[$key]['rmb'] =  round($this->rate*$value['price'],1);
            
            $value['spec_img'] = getThumb($value['spec_img'],200,200);
            $spec[$key]['spec_img'] = getRealUrl($value['spec_img']);
        }
        foreach ($pack as $key => $value) {
            $pack[$key]['rmb'] =  round($this->rate*$value['price'],1);            
        }
        return ['goods'=>$goods,'pack'=>$pack,'spec'=>$spec];
    }

    //获取商品价格
    public function getGoodsPrice($goods,$specID,$flashArr){
        //判断是套餐的ID还是商品的ID
        if($goods['fid']>0){
            $fid = $goods['fid'];
        }else{
            $fid = $goods['id'];
        }  
        $flash = $this->checkInFlash($fid,$flashArr);//判断是否在今日抢购中
        $spec = [];
        if($goods['fid']==0){
            if($specID>0){//有规格选项
                $spec = db("GoodsSpecPrice")->field('key_name,price,cutPrice')->where('item_id',$specID)->find(); 
                if($flash){ //今日抢购      
                    $flash['spec'] = unserialize($flash['spec']); 
                    foreach ($flash['spec'] as $k => $val) {
                        if($val['specID'] == $specID){
                            $price = $val['price'];
                            $cutPrice = 0;
                            break;
                        }
                    }
                }else{
                    $price = $spec['price'];
                    $cutPrice = $spec['cutPrice'];
                }                        
            }else{
                if($flash){
                    $price = $flash['price'];
                    $cutPrice = 0;
                }else{
                    $price = $goods['price'];
                    $cutPrice = $goods['cutPrice'];
                }                        
            }
        }else{//是套餐
            if($flash){
                $price = $flash['price'];
                $cutPrice = 0;
            }else{
                $price = $goods['price'];
                $cutPrice = $goods['cutPrice'];
            }                   
        } 

        return ['price'=>$price,'cutPrice'=>$cutPrice,'spec'=>$spec];
    }

    //获取包裹
    /*
    $type 1价格优先 2数量优先
    */
    public function getYunfeiJson($cart,$type=1,$province=null){
        foreach ($cart as $key => $value) {
            $goods = db('Goods')->where('id',$value['goodsID'])->find(); 
            $cart[$key]['name'] = $goods['name'];
            $cart[$key]['short'] = $goods['short'];
            $cart[$key]['wuliuWeight'] = $goods['wuliuWeight'];            
            $cart[$key]['weight'] = $goods['weight'];
            $cart[$key]['singleNumber'] = $goods['number'];
        } 

        //中环包裹信息
        $zhonghuan = new \pack\Zhonghuan($cart,$province);
        $zhBag = $this->getBagTotal($zhonghuan->getBaoguo());

        $zhongyou = new \pack\Zhongyou($cart,$province);        
        $zyBag = $this->getBagTotal($zhongyou->getBaoguo());

        if($type==1){
            if($zhBag['totalPrice']>$zyBag['totalPrice']){
                $baoguo = $zyBag;
            }else{
                $baoguo = $zhBag;
            }
        }else{
            if(count($zhBag['baoguo'])>count($zyBag['baoguo'])){
                $baoguo = $zyBag;
            }else{
                $baoguo = $zhBag;
            }
        }   
        return $baoguo;
    }

    public function getBagTotal($baoguoArr){
        $totalWeight = 0;
        $totalWuliuWeight = 0;
        $totalPrice = 0;
        $totalExtend = 0;
        $totalInprice = 0;
        foreach ($baoguoArr as $key => $value) {
            $totalWeight += $value['totalWeight'];
            $totalWuliuWeight += $value['totalWuliuWeight'];
            $totalPrice += $value['yunfei'];
            $totalExtend += $value['extend'];
            $totalInprice += $value['inprice'];
        }
        $data = [
            'totalWeight'=>fix_number_precision($totalWeight,2),
            'totalWuliuWeight'=>fix_number_precision($totalWuliuWeight,2),
            'totalPrice'=>fix_number_precision($totalPrice,2),
            'totalExtend'=>fix_number_precision($totalExtend,2),
            'totalInprice'=>fix_number_precision($totalInprice,2),
            'baoguo'=>$baoguoArr
        ];     
        return $data;
    }

    //生成随机优惠券码
    public function getCouponNo(){
        $randNum = rand(1000000000, 9999999999);
        $map['code'] = $randNum;
        $count = db("CouponLog")->where($map)->count();
        if ($count>0) {
            return $this->getOrderNo();
        }
        return $randNum;
    }

    //当前汇率
    public function getRate(){
        if (cache("rate")) {
            return cache("rate");
        }else{
            require_once EXTEND_PATH.'omipay/OmiPayApi.php';
            require_once EXTEND_PATH.'omipay/OmiPayData.php';
            $config = tpCache("omi");
            $domain = 'AU';
            // 设置'CN'为访问国内的节点 ,设置为'AU'为访问香港的节点
            $input = new \OmiPayExchangeRate();
            $input -> setMerchantNo($config['OMI_ID']);
            $input -> setSercretKey($config['OMI_KEY']);
            //$input -> setPlatform("设置查询平台'WECHATPAY/ALIPAY'");
            $omipay = new \OmiPayApi();
            $res = $omipay->exchangeRate($input,$domain);
            if ($res['success']) {
                $rate = number_format($res['rate'],4);
            }else{
                $rate = 0;
            }
            cache("rate",$rate,3600);
            return $rate;
        }        
    }

    public function getAueToken(){
        if (cache("aueToken")) {
            return cache("aueToken");
        }else{
            $url = 'http://auth.auexpress.com/api/token';
            $config = tpCache("kuaidi");
            $data = ['MemberId'=>$config['AUE_ID'],'Password'=>$config['AUE_KEY']];
            $res = $this->https_post($url,$data,true);
            $res = json_decode($res,true);   
            if ($res['Token']) {
                $token = $res['Token'];
                cache("aueToken",$token,7200);
                return $token;
            }else{
                return '';
            }           
        }
    }

    public function createSingleOrder($order){
        $goods = db("OrderDetail")->where("baoguoID",$order['id'])->select();
        $content = '';
        foreach ($goods as $k => $val) {      
            $goodsName = $val['short'];        
            if ($k==0) {
                $content .= $goodsName.'*'.$val['number'];
            }else{
                $content .= ";".$goodsName.'*'.$val['number'];
            }
        }

        $brandID = getBrandID($order);
        $config = tpCache("kuaidi");
        $data = [
            'MemberId'=>$config['AUE_ID'],
            'BrandId'=>$brandID,
            'SenderName'=>$order['sender'],
            'SenderPhone'=>$order['senderTel'],
            'ReceiverName'=>$order['name'],
            'ReceiverPhone'=>$order['tel'],
            'ReceiverProvince'=>$order['province'],
            'ReceiverCity'=>$order['city'],
            'ReceiverAddr1'=>$order['county'].$order['addressDetail'],
            'ChargeWeight'=>0,
            'Value'=>0,
            'ShipmentContent'=>$content
        ];

        $token = $this->getAueToken();
        $url = 'http://aueapi.auexpress.com/api/AgentShipmentOrder/Create';
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($ch, CURLOPT_POSTFIELDS,'['.json_encode($data).']');
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type:application/json','Authorization: Bearer '.$token));
        $result = curl_exec($ch);
        $result = json_decode($result,true);    

        if ($result['Message']=='Authentication failed, invalid token.') {
            Cache::rm('aueToken');  
        }
        if ($result['Code']==0 && $result['Message']!='' && $result['Message']!='Authentication failed, invalid' && $result['Message']!='Authentication failed, invalid token.') {
            $update = [
                'kdNo'=>$result['Message']
            ];
            db("OrderBaoguo")->where('id',$order['id'])->update($update);
            return ['code'=>1,'msg'=>$result['Message']];
        }else{
            return ['code'=>0,'msg'=>$result['Errors'][0]['Message']];
        }
    }

    public function saveAuePng($orderNo){        
        $token = $this->getAueToken();
        $url = 'http://aueapi.auexpress.com/api/OrderLabelPrint?orderId='.$orderNo.'&printMode=1&fileType=0&fontSize=0';
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "GET");
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array('Authorization: Bearer '.$token));
        $res = curl_exec($ch);
        if ($res=='') {
            return '';
        }else{
            $path = config('UPLOAD_PATH').'order/'.date("Ymd").'/'.$orderNo.'.png';
            $filename = '.'.$path;   // 文件保存路径
            $this->createDir(dirname($filename));
            $fp= @fopen($filename,"w"); 
            fwrite($fp,$res);
            return $path;
        }        
    }

    public function createDir($path){ 
        if (!file_exists($path)){ 
            $this->createDir(dirname($path)); 
            mkdir($path, 0777); 
        } 
    }

    //获取购物车信息
    public function getCartInfo($cart){
        $total = 0;
        foreach ($cart as $key => $value) {
            $goods = db('Goods')->where('id='.$value['goodsID'])->find();
            if($value['specID']>0){
                $spec = db("GoodsSpecPrice")->where('item_id',$value['specID'])->find();
                $goods['price'] = $spec['price'];
            }
            //贴心服务需要计算商品个数，所以要乘套餐里边商品的数量
            $total  += $goods['price'] * $value['number'];
            //$weight += $goods['weight'] * $value['trueNumber'];
        }
        $number = count($cart);
        return array('number'=>$number,'total'=>$total); 
    }

    //检查优惠券是否可用
    /*
    total 订单商品总金额
    */
    public function checkCoupon($coupon,$cart,$total){
        if($total < $coupon['full']){
            return false;
        }
        if($coupon['goodsID']!=''){
            $goodsIds = explode(",", $coupon['goodsID']);
            foreach ($cart as $key => $value) {
                if(in_array($value['goodsID'],$goodsIds)){
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    //注册就送的优惠券
    public function autoCoupon($user){
        $map['register'] = 1;
        //$map['status'] = 1;
        $coupon = db("Coupon")->where($map)->select();
        $data = [];
        foreach ($coupon as $key => $value) {
            for ($i=0; $i < $value['number']; $i++) { 
                $temp = [
                    'memberID'=>$user['id'],
                    'nickname'=>$user['nickname'],
                    'couponID'=>$value['id'],
                    'code'=>$this->getCouponNo(),
                    'name'=>$value['name'],
                    'desc'=>$value['desc'],
                    'full'=>$value['full'],
                    'dec'=>$value['dec'],
                    'intr'=>$value['intr'],
                    'goodsID'=>$value['goodsID'],
                    'createTime'=>time(),
                    'useTime'=>0,
                    'status'=>0,
                    'endTime'=>time()+$value['day']*86400
                ];
                array_push($data,$temp);
            }
            if (count($data)>0) {
                db("CouponLog")->insertAll($data);
            }
        }
    }

    //获取随机订单号
    public function getOrderNo(){
        $order_no = getStoreOrderNo();
        $map['order_no'] = $order_no;
        $count = db("Order")->where($map)->count();
        if ($count>0) {
            return $this->getOrderNo();
        }
        return $order_no;
    }

    public function base64ToImg($path , $name , $data){
        if (preg_match('/^(data:\s*image\/(\w+);base64,)/', $data, $result)){
            $type = $result[2];
            if(!in_array($type,array("jpg","png","bmp","jpeg","gif"))){
                return false;
            }
        
            if(!file_exists($path)){
                //检查是否有该文件夹，如果没有就创建，并给予最高权限
                mkdir('./'.$path, 0700, true);
            }
            $new_file = $path.$name.".{$type}";  
            if (file_put_contents('.'.$new_file, base64_decode(str_replace($result[1], '', $data)))){
                return $new_file;
            }else{
                return false;
            }
        }
    }

    public function getCodeStatus($code,$mobile){
        $map['account'] = $mobile;
        $map['regcode'] = $code;
        $map['status'] = 0;
        $list = db("MemberCode")->where($map)->order('id desc')->find();
        if ($list) {
            $config = tpCache('sms');
            if (time()-$list['createTime'] > $config['out_time']*60) {
                return ['code'=>0,'msg'=>'短信验证码超时，请在'.$config['out_time'].'分钟内容输入'];
            }else{
                return ['code'=>1,'msg'=>'success'];
            }            
        }else{
            return ['code'=>0,'msg'=>'短信验证码错误'];
        }
    }

    public function https_post($url,$data = null,$json = false){
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
        curl_setopt($ch, CURLOPT_SSLVERSION, 1);
        curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (compatible; MSIE 5.01; Windows NT 5.0)');
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($ch, CURLOPT_AUTOREFERER, 1);
        if (!empty($data)) {
            if ($json && is_array($data)) {
                $data = json_encode($data);
            }
            curl_setopt($ch, CURLOPT_POST, 1);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $data);            
            if ($json) {//发送JSON数据
                curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type:application/json'));
            }
        }
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $output = curl_exec($ch);       
        return $output;
    }

    //防止重复提交
    public function lock($expire=1,$mark='',$userid){
        $request= \think\Request::instance();
        $url=strtolower($request->module().'/'.$request->controller().'/'.$request->action());//操作地址  
        $prefix='lock_'; 
        $key=$prefix.md5($userid.$url.$mark);//令牌键值
        $options = [
            'type'      => 'redis',
            'host'      => '127.0.0.1',
            'port'      => '6379',//你redis的端口号，可以在配置文件设置其他的
            'password'  => '', //这里是你redis配置的密码，如果没有则留空
            'timeout'   => 3600 //缓存时间
        ];
        cache($options);
        if(!cache($key)){
            cache($key, $expire, $expire);
            return true;
        }else{
            return false;
        }
        return true;   
    }
}
