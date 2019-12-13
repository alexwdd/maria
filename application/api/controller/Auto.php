<?php
namespace app\api\controller;

use app\common\controller\Base;

class Auto extends Base {

    public function _initialize(){
        parent::_initialize();        
    }    

    public function delete(){
        $config = tpCache('member');
        $map['payStatus'] = 0;
        $map['wallet'] = 0;
        $list = db("Order")->where($map)->select();
        foreach ($list as $key => $value) {
            if($value['isCut']==1 && time()>($value['createTime']+$config['hour']*3600)){
                db("Order")->where('id',$value['id'])->setField('endTime',time());
            }

            if($value['endTime']>0 && time()>($value['endTime']+$config['orderTime']*3600)){
                db("Order")->where('id',$value['id'])->delete();
                db("OrderBaoguo")->where('orderID',$value['id'])->delete();
                db("OrderCart")->where('orderID',$value['id'])->delete();
                db("OrderDetail")->where('orderID',$value['id'])->delete();
                db("OrderCut")->where('orderID',$value['id'])->delete();
            }
        }
    }

    //创建运单
    public function createOrder(){
        $map['kdNo'] = '';
        $map['kuaidi'] = array('neq','');
        $map['type'] = array('not in',[15,16,17]);
        $list = db("OrderBaoguo")->where($map)->select();
        foreach ($list as $key => $value) {
            $this->createSingleOrder($value);
        }
    }

    //创建电子单
    public function createOrderPng(){
        /*$content = date('Y-m-d H:i:s')." 创建运单图片\r\n";
        $file = 'auto.log';
        file_put_contents($file, $content,FILE_APPEND);*/

        $map['kdNo'] = array('neq','');
        $map['type'] = array('not in',[15,16,17]);
        $map['eimg'] = array('eq','');
        //$map['status'] = 1;
        $list = db("OrderBaoguo")->where($map)->select();
        foreach ($list as $key => $value) {
            $eimg = $this->saveAuePng($value['kdNo']);  
            if ($eimg!='') {
                $update = [
                    'eimg'=>$eimg
                ];
                db("OrderBaoguo")->where('id',$value['id'])->update($update);
            }
            die;
        }
    }

    //上传身份证
    public function uploadPersonPhoto(){
        /*$content = date('Y-m-d H:i:s')." 上传身份证\r\n";
        $file = 'auto.log';
        file_put_contents($file, $content,FILE_APPEND);*/

        $map['kdNo'] = array('neq','');
        $map['type'] = array('not in',[15,16,17]);
        //$map['status'] = 1;
        $map['snStatus'] = 0;
        $list = db("OrderBaoguo")->where($map)->select();       
        $token = $this->getAueToken();
        foreach ($list as $key => $value) {
            $order = db('Order')->where('id',$value['orderID'])->find();
            if ($order['front']!='' && $order['back']!='') {
                $data = [
                    'OrderIds'=>[$value['kdNo']],
                    'ReceiverName'=>$order['name'],
                    'ReceiverPhone'=>$order['tel'],
                    'PhotoID'=>$order['sn'],
                    'PhotoFront'=>base64EncodeImage('.'.$order['front']),
                    'PhotoRear'=>base64EncodeImage('.'.$order['back'])
                ];      
                $url = 'http://aueapi.auexpress.com/api/PhotoIdUpload';
                $ch = curl_init($url);

                curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
                curl_setopt($ch, CURLOPT_POSTFIELDS,json_encode($data));
                curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
                curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type:application/json','Authorization: Bearer '.$token));
                $result = curl_exec($ch);
                $result = json_decode($result,true);
                if ($result['Code']==0 && $result['ReturnResult']=='Success') {
                    db("OrderBaoguo")->where($map)->setField('snStatus',1);
                }
            }           
        }
    }
}