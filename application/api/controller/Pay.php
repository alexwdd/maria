<?php
namespace app\api\controller;

class Pay extends Auth {

    public function submit(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $payType = input('post.payType');
            $order_no = input('post.order_no');

            if ($order_no == '') {
                returnJson(0,'请输入订单号');
            }

            if (!in_array($payType, [1,2])) {
                returnJson(0,'支付方式错误');
            }

            $map['order_no'] = $order_no;            
            $map['memberID'] = $this->user['id'];
            $map['payStatus'] = 0;
            $list = db('Order')->where($map)->find();
            if(!$list){
                returnJson(0,'订单不存在');
            }

            $data['payType'] = $payType;
            $data['money'] = $list['total'];

            if($list['endTime']==0){
                $data['endTime'] = time();
            }
                   
            db("Order")->where('id',$list['id'])->update($data);

            if ($data['payType']==1) {
                $result = $this->wxPub($list);
            }else{
                $result = $this->aliPub($list);
            }

            returnJson(1,'success',$result);
        }
    }

    //支付宝统一下单
    public function aliPub($order){
        $config = tpCache("alipay");
        vendor('appalipay.AopSdk');// 加载类库
        $aop = new \AopClient;
        $aop->gatewayUrl = "https://openapi.alipay.com/gateway.do";
        $aop->appId = $config['ALI_APP_ID'];
        $aop->rsaPrivateKey = $config['ALI_PRI_KEY'];
        $aop->format = "json";
        $aop->charset = "UTF-8";
        $aop->signType = "RSA2";
        $aop->alipayrsaPublicKey = $config['ALI_PUB_KEY'];
        //实例化具体API对应的request类,类名称和接口名称对应,当前调用接口名称：alipay.trade.app.pay
        $request = new \AlipayTradeAppPayRequest();
        //SDK已经封装掉了公共参数，这里只需要传入业务参数
        $content = array();
        $content['body'] = '在线支付';
        $content['subject'] = '在线支付';//商品的标题/交易标题/订单标题/订单关键字等
        $content['out_trade_no'] = $order['order_no'];//商户网站唯一订单号
        $content['timeout_express'] = '1d';//该笔订单允许的最晚付款时间
        $content['total_amount'] = floatval($order['rmb']);//订单总金额(必须定义成浮点型)
        #$content['total_amount'] = 0.01;//订单总金额(必须定义成浮点型)
        $content['product_code'] = 'QUICK_MSECURITY_PAY';//

        $bizcontent = json_encode($content);
        $request->setNotifyUrl(config('site.domain').'/v1/chongzhi/alinotify/');
        $request->setBizContent($bizcontent);
        //这里和普通的接口调用不同，使用的是sdkExecute
        $response = $aop->sdkExecute($request);
        //htmlspecialchars是为了输出到页面时防止被浏览器将关键参数html转义，实际打印到日志以及http传输不会有这个问题
        $str = $response;//就是orderString 可以直接给客户端请求，无需再做处理。
        return array('url'=>$str,'order_no'=>$order['order_no']);
    }

    //微信下单
    public function wxPub($order){
        $config = config("weixin");
        require_once EXTEND_PATH.'weixinpay/WxPayPubHelper.class.php';
        //=========步骤2：使用统一支付接口，获取prepay_id============
        //使用统一支付接口
        $unifiedOrder = new \UnifiedOrder_pub($config['APP_ID'],$config['MCH_ID'],$config['MCH_KEY']);
        $jsApi = new \JsApi_pub($config['APP_ID'],$config['MCH_ID'],$config['MCH_KEY']); 

        $unifiedOrder->setParameter("body",'手机充值');//商品描述
        //自定义订单号，此处仅作举例
        $unifiedOrder->setParameter("out_trade_no",$order['order_no']);//商户订单号 
        //$unifiedOrder->setParameter("total_fee",$order['rmb']*100);//总金额
        $unifiedOrder->setParameter("total_fee",1);//总金额
        $unifiedOrder->setParameter("notify_url",config('site.domain').'/v1/chongzhi/wxnotify/');//通知地址 
        $unifiedOrder->setParameter("trade_type","APP");//交易类型
        $unifiedOrder->setParameter("spbill_create_ip",request()->ip());//客户端IP

        $prepay_id = $unifiedOrder->getPrepayId();

        $jsApi->setPrepayId($prepay_id);
        $jsApiParameters = $jsApi->getAppParameters();
        $jsApiParameters['order_no'] = $order['order_no'];
        return $jsApiParameters;
    }
}