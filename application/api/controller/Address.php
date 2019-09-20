<?php
namespace app\api\controller;

class Address extends Auth {

    //我的购物车
    public function lists(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $keyword = input('param.keyword');
            $page = input('post.page/d',1);
            $pagesize = input('post.pagesize',10);
            $firstRow = $pagesize*($page-1); 

            if($keyword!=''){
                $map['name|tel'] = array('like','%'.$keyword.'%');
            }
            $map['memberID'] = $this->user['id'];
            $obj = db('Address');
            $count = $obj->where($map)->count();
            $totalPage = ceil($count/$pagesize);
            if ($page < $totalPage) {
                $next = 1;
            }else{
                $next = 0;
            }
            $list = $obj->where($map)->limit($firstRow.','.$pagesize)->order('id desc')->select();
            foreach ($list as $key => $value) {
                $list[$key]['front'] = getRealUrl($value['front']);
                $list[$key]['back'] = getRealUrl($value['back']);
            }
            returnJson(1,'success',['next'=>$next,'data'=>$list]);
        }
    }

    public function detail(){
        if (request()->isPost()) {
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $id = input('post.id');
            if ($id=='') {
                returnJson(0,'参数错误');
            }
            $map['id'] = $id;
            $map['memberID'] = $this->user['id'];
            $list = db('Address')->where( $map )->find();
            if ($list) {  
                $list['front'] = getRealUrl($list['front']);
                $list['back'] = getRealUrl($list['back']);
                returnJson(1,'success',$list); 
            }else{
                returnJson(0,'信息不存在');
            }
        }
    }

    //发布
    public function pub(){
        if (request()->isPost()) { 
            //if(!checkFormDate()){returnJson(0,'ERROR');}
            $data = input('post.');
            $data['memberID'] = $this->user['id'];

            if ($data['def']==1) {
                $list = db('Address')->where(array('memberID'=>$this->user['id']))->setField('def',0);
            }
            if($data['front']!='' && strstr($data['front'], 'base64')){
                $path = config('UPLOAD_PATH').'sn/'.$this->user['id'].'/';
                $fileName = createNonceStr();
                $fileUrl = $this->base64ToImg($path,$fileName,$data['front']);
                if ($fileUrl) {
                    $data['front'] = $fileUrl;
                }else{
                    $data['front'] = '';
                }
            }
            if($data['back']!='' && strstr($data['back'], 'base64')){
                $path = config('UPLOAD_PATH').'sn/'.$this->user['id'].'/';
                $fileName = createNonceStr();
                $fileUrl = $this->base64ToImg($path,$fileName,$data['back']);
                if ($fileUrl) {
                    $data['back'] = $fileUrl;
                }else{
                    $data['back'] = '';
                }
            }
            $res = model('Address')->saveData( $data );
            if ($res['code']==1) {  
                returnJson(1,'操作成功'); 
            }else{
                returnJson(0,$res['msg']);
            }            
        }
    }

    //删除
    public function del(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $ids = input('post.ids');
            if ($ids=='') {
                returnJson(0,'缺少参数');
            }
            $ids = explode(",",$ids);
            $map['id'] = array('in',$ids);
            $map['memberID'] = $this->user['id'];
            db("Address")->where($map)->delete();
            returnJson(1,'success');
        }       
    }

    public function textToAddress(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $text = input('post.text');

            if($text==""){
                returnJson(0,"请输入需要转换的地址信息");
            }

            $app_id = '104534';
            $method = 'cloud.address.resolve';
            $key = 'fe1248c9ba671014c1659607a245407f2d201d1b';
            $time = time();
            $sign = md5($app_id.$method.$time.$key);

            $url = "https://kop.kuaidihelp.com/api";
            $data = [
                "app_id"=>$app_id,
                "method"=>$method,
                "sign"=>$sign,
                "ts"=>$time,
                "data"=>'{
                    "text":"'.$text.'",
                    "multimode":false
                }'
            ];

            $result = $this->https_post($url,$data);
            $result = json_decode($result,true);
            if($result['code']==0){
                returnJson(1,'success',$result['data'][0]);
            }else{
                returnJson(0,'转换失败');
            }            
        }
    }
}