<?php
namespace app\api\controller;

class Account extends Auth {

    //个人信息
    public function userinfo(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $user['headimg'] = getUserFace($this->user['headimg']);
            $user['nickname'] = $this->user['nickname'];
            $user['name'] = $this->user['name'];
            $user['mobile'] = $this->user['mobile'];
            $user['wechat'] = $this->user['wechat'];
            $user['sn'] = $this->user['sn'];
            returnJson(1,'success',['user'=>$user]);
        }
    }

    //收藏
    public function doFav(){
        if (request()->isPost()) {
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $goodsID = input('post.goodsID');
            if ($goodsID=='' && !is_numeric($goodsID)) {
                returnJson(0,'参数错误');
            }
            $map['goodsID'] = $goodsID;
            $map['memberID'] = $this->user['id'];
            $res = db('Fav')->where($map)->find();
            if ($res) {
                returnJson(1,'success');
             }else{
                $data = ['goodsID'=>$goodsID,'memberID'=>$this->user['id']];
                $result = db('Fav')->insert($data);
                if ($result) {
                    returnJson(1,'success');
                }else{
                    returnJson(0,'操作失败');
                }                
            }
        }
    }

    //我的收藏
    public function fav(){
        if(request()->isPost()){
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $config = tpCache("member");
            $page = input('post.page/d',1);
            $pagesize = input('post.pagesize',10);

            $firstRow = $pagesize*($page-1); 
 
            $map['memberID'] = $this->user['id'];
            $obj = db('Fav');
            $count = $obj->where($map)->count();
            $totalPage = ceil($count/$pagesize);
            if ($page < $totalPage) {
                $next = 1;
            }else{
                $next = 0;
            }
            $list = $obj->field('id,goodsID')->where($map)->limit($firstRow.','.$pagesize)->order('id desc')->select();
            foreach ($list as $key => $value) {
                unset($map);
                $map['id'] = $value['goodsID'];
                $goods = db('Goods')->field('name,picname,price,marketPrice')->where($map)->find();
                if($goods){
                    $goods['picname'] = getRealUrl($goods['picname']);
                    $goods['rmb'] = $goods['price']*$config['huilv'];
                }else{
                    $goods = [];
                }                
                $list[$key]['goods'] = $goods;
            }
            returnJson(1,'success',['next'=>$next,'data'=>$list]);
        }
    }

    //删除收藏
    public function delFav(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $ids = input('post.ids');
            if ($ids=='') {
                returnJson(0,'缺少参数');
            }
            $ids = explode(",",$ids);
            $map['id'] = array('in',$ids);
            $map['memberID'] = $this->user['id'];
            db("Fav")->where($map)->delete();
            returnJson(1,'success');
        }       
    }

    //每日签到
    public function sign(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $beginDate = strtotime(date("Y-m-1"));
            $beginStr = date("Y-m-d",$beginDate);
            $endDate = strtotime("$beginStr +1 month -1 day");
            $dataArr = array();
            for ($i=$beginDate; $i <=$endDate ; $i+=24*3600) { 
                array_push($dataArr,date("m-d",$i));
            }

            $map['createTime'] = array('between',array($beginDate,$endDate));
            $map['memberID'] = $this->user['id'];
            $sign = db('Sign')->where($map)->column('id,signDate');
            if (in_array(date("Y-m-d"),$sign)) {
                $flag = '1';
            }else{
                $flag = '0';
            }           

            foreach ($sign as $key => $value) {
                $sign[$key]=date("m-d",strtotime($value));
            }

            unset($map);
            $list = db("Sign")->field('point,signDate')->where('memberID',$this->user['id'])->order('id desc')->limit(10)->select();

            returnJson(1,'success',['today'=>$flag,'sign'=>$sign,'data'=>$list]);
        }
    }

    //签到
    public function doSign(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $config = tpCache('member');
            $date = date("Y-m-d");
            $map['memberID'] = $this->user['id'];
            $map['signDate'] = $date;
            $list = db('Sign')->where($map)->find();
            if ($list) {
                returnJson(0,'今天您已签过');
            }else{
                $data['signDate'] = $date;
                $data['point'] = $config['sign'];
                $data['memberID'] = $this->user['id'];
                $data['createTime'] = time();
                $list = db('Sign')->insert($data);
                if ($list) {
                    //添加财务记录
                    $data = array(
                        'type' => 2,
                        'money' => $config['sign'],
                        'memberID' => $this->user['id'],     
                        'doID' =>  $this->user['id'],
                        'admin' => 1,
                        'msg' => date("m-d").'签到，奖励'.$config['sign'].'积分。',
                        'extend1'=>0,
                        'createTime' => time()
                    ); 
                    db('Finance')->insert( $data );
                    returnJson(1,'success',['date'=>date("m-d")]);
                }else{
                    returnJson(0,'操作失败');
                }
            }
        }
    }


    //修改密码
    public function password(){
        if (request()->isPost()) {
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $oldpassword = trim(input('post.oldpassword'));
            $password = trim(input('post.password'));
            //$repassword = trim(input('post.repassword'));
            $id = $this->user['id'];

            if($this->user['password']!=md5($oldpassword)){
                returnJson(0,'原始密码错误！');
            }

            /*if($password!=$repassword){
                returnJson(0,'两次密码不一致！');
            }*/

            $user=db('Member');            
            $data['password']=md5($password);
            $rs = $user->where(array('id'=>$id))->update($data);
            if ($rs) {
                returnJson(1,'success');  
            }else{
                returnJson(0,'操作失败');
            }
        }
    }


    //修改资料
    public function edit(){
        if (request()->isPost()) {
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $nickname = input('post.nickname');
            $name = input('post.name');
            $wechat = input('post.wechat');
            $headimg = input('post.headimg');
            $sn = input('post.sn');
            if($nickname){
                $data['nickname'] = $nickname;
            }
            if($name){
                $data['name'] = $name;
            }
            if($wechat){
                $data['wechat'] = $wechat;
            }
            if($headimg){
                $data['headimg'] = $headimg;
            }
            if($name){
                $data['sn'] = $sn;
            }

            $map['id'] = $this->user['id'];
            db("Member")->where($map)->update($data);
            returnJson(1,'success');
        }
    }
        
    //上传图片
    public function upload(){
        if (request()->isPost()) {
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $image = input('post.image');
            $path = config('UPLOAD_PATH').'face/';
            $fileName = createNonceStr();
            $fileUrl = $this->base64ToImg($path,$fileName,$image);
            $fileUrl = getUserFace($fileUrl);
            returnJson(1,'success',['face'=>$fileUrl]);
        }
    }
}