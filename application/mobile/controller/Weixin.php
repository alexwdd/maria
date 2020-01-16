<?php
namespace app\mobile\controller;
use app\common\controller\Base;
use think\Request;

class Weixin extends Base
{  
    public function pay(){
        $config = tpCache('weixin');
        $request = Request::instance();
        // 获取包含域名的完整URL地址
        $goToUrl = $request->url(true);
        $goToUrl = urlencode($goToUrl);      
        $code = input('param.code');
        if ($code=='') {
            $url = 'https://open.weixin.qq.com/connect/oauth2/authorize?appid='.$config['APP_ID'].'&redirect_uri='.$goToUrl.'&response_type=code&scope=snsapi_base&state=1#wechat_redirect';
            header('Location:'.$url);die;
        }else{            
            $url = 'https://api.weixin.qq.com/sns/oauth2/access_token?appid='.$config['APP_ID'].'&secret='.$config['APP_SECRET'].'&code='.$code.'&grant_type=authorization_code';
            $con = file_get_contents($url);
            $con = json_decode($con,true);              
            $openid = $con['openid'];
        }
        
        require_once EXTEND_PATH.'weixinpay/WxPayPubHelper.class.php';
        //使用jsapi接口
        $jsApi = new \JsApi_pub($config['APP_ID'],$config['MCH_ID'],$config['MCH_KEY'],$config['APP_SECRET']); 
        
        //获取订单信息  
        $order_no = input('param.order_no');
        if ($order_no=='') {die;}
        $map['order_no'] = $order_no;
        $map['payStatus'] = 0;
        $list = db('Order')->where($map)->find();
        if (!$list) {
            $this->error('订单不存在，或已支付');
        }      
        $this->assign('list',$list);
  
        //=========步骤2：使用统一支付接口，获取prepay_id============
        //使用统一支付接口
        $unifiedOrder = new \UnifiedOrder_pub($config['APP_ID'],$config['MCH_ID'],$config['MCH_KEY'],$config['APP_SECRET']);    
        $unifiedOrder->setParameter("openid",$openid);//商品描述
        $unifiedOrder->setParameter("body",'在线支付');//商品描述
        //自定义订单号，此处仅作举例
        $unifiedOrder->setParameter("out_trade_no",$list['order_no']);//商户订单号 
        //$unifiedOrder->setParameter("total_fee",$list['money']*100);//总金额
        $unifiedOrder->setParameter("total_fee",1);//总金额
        $unifiedOrder->setParameter("notify_url",'http://'.$_SERVER['HTTP_HOST'].'/wxpay/notice.php');
        $unifiedOrder->setParameter("trade_type","JSAPI");//交易类型

        $prepay_id = $unifiedOrder->getPrepayId();

        //=========步骤3：使用jsapi调起支付============
        $jsApi->setPrepayId($prepay_id);
        $jsApiParameters = $jsApi->getParameters();
        $this->assign('jsApiParameters',$jsApiParameters);
        $returnUrl = 'http://m.aumaria.com/pay/return/'.$list['order_no'];
        $this->assign('returnUrl',$returnUrl);

        $returnFailUrl = 'http://m.aumaria.com/pay/return/'.$list['order_no'];
        $this->assign('returnFailUrl',$returnFailUrl);  
        return view();
    } 

    public function webpay()
    {
        //获取订单信息  
        $order_no = input('param.order_no');
        if ($order_no=='') {die;}
        $map['order_no'] = $order_no;
        $map['payStatus'] = 0;
        $list = db('Order')->where($map)->find();
        if (!$list) {
            $this->error('订单不存在，或已支付');
        }
        $this->assign('list',$list);

        if (cache($this->user['id'].'_'.$order_no.'_'.'pay')) {
            $url = cache($this->user['id'].'_'.$order_no.'_'.'pay');
        }else{
            //缓存订单状态
            $config = tpCache('weixin');
            require_once EXTEND_PATH.'weixinpay/WxPayPubHelper.class.php';
            
            $unifiedOrder = new \UnifiedOrder_pub($config['APP_ID'],$config['MCH_ID'],$config['MCH_KEY'],$config['APP_SECRET']);     
            $unifiedOrder->setParameter("device_info",'WEB');//PC网页或公众号内支付请传"WEB"
            $unifiedOrder->setParameter("body",'在线支付');//商品描述
            //自定义订单号，此处仅作举例
            $unifiedOrder->setParameter("out_trade_no",$order_no);//商户订单号 
            //$unifiedOrder->setParameter("out_trade_no",$list['order_no']);//商户订单号 
            $unifiedOrder->setParameter("total_fee",'1');//总金额
            $unifiedOrder->setParameter("notify_url",'http://'.$_SERVER['HTTP_HOST'].'/wxpay/notice.php');
            $unifiedOrder->setParameter("trade_type","NATIVE");//交易类型
            $unifiedOrder->setParameter("product_id","1"); //trade_type=NATIVE，此参数必传。
            $result = $unifiedOrder->getResult(); 
            $url = $result['code_url'];
            cache($this->user['id'].'_'.$order_no.'_'.'pay',$url);
        }        
        $this->assign('url',$url);
        return view();
    }

    public function qrcode(){
        require_once EXTEND_PATH.'qrcode/qrcode.php';
        $value = input("param.url");//二维码数据
        $errorCorrectionLevel = 'Q';//纠错级别：L、M、Q、H
        $matrixPointSize = 10;//二维码点的大小：1到10
        $object = new \QRcode();
        $object->png($value, false, $errorCorrectionLevel, $matrixPointSize, 2);//不带Logo二维码的文件名
        //$filePath = "/".$turePath.'qrcodes.jpg';
    }
    
    public function status(){
        $order_no = input('param.order_no');
        $map['order_no'] = $order_no;
        $list = db("Order")->where($map)->find();
        if ($list['payStatus']>0) {
            echo 'success';
        }
    }
}
