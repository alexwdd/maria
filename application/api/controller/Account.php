<?php
namespace app\api\controller;

class Account extends Auth {

    //会员首页
    public function index(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $user['headimg'] = getUserFace($this->user['headimg']);
            $user['nickname'] = $this->user['nickname'];
            $user['name'] = $this->user['name'];
            $user['mobile'] = $this->user['mobile'];
            $user['wechat'] = $this->user['wechat'];
            $user['sn'] = $this->user['sn'];
            $user['id'] = $this->user['id'];

            $map['memberID'] = $this->user['id'];
            $map['status'] = 0;
            $map['endTime'] = array('gt',0);
            $map['hide'] = 0;
            $order1 = db("Order")->where($map)->count();

            unset($map);
            $map['memberID'] = $this->user['id'];
            $map['status'] = 0;
            $map['isCut'] = 1;
            $map['hide'] = 0;
            $map['endTime'] = 0;
            $order2 = db("Order")->where($map)->count();

            unset($map);
            $map['hide'] = 0;
            $map['memberID'] = $this->user['id'];
            $map['status'] = 1;
            $order3 = db("Order")->where($map)->count();
            $map['status'] = 2;
            $order4 = db("Order")->where($map)->count();
            $map['status'] = 3;
            $order5 = db("Order")->where($map)->count();
            $map['status'] = 99;
            $order6 = db("Order")->where($map)->count();

            $fina = $this->getUserMoney($this->user['id']);
            $gift = db("Gift")->field('point,money')->order('point asc')->select();
            $result = getGiftBack($fina,$gift);

            /*$config = tpCache('member');
            $last_mont_first_date = date('Y-m-1',strtotime('last month'));
            $last_mont_end_date = date('Y-m-d',strtotime(date('Y-m-1').'-1 day'));
            unset($map);
            $map['createTime'] = array('between',array(strtotime($last_mont_first_date),strtotime($last_mont_end_date)+86399));
            $map['memberID'] = $this->user['id'];
            $map['type'] = 7;
            $lastMonth = db("Finance")->where($map)->sum("money");

            $result['fanli'] = round(($fina['fund']*$result['bar'])/100,2);
            $result['baifenbi'] = ($find['point']/12000)*100;*/

            //为您推荐 
            $obj = db('GoodsPush');
            $list = $obj->field('goodsID')->where('cateID',3)->limit(10)->order('id desc')->select();
            foreach ($list as $key => $value) {                
                $goods = db("Goods")->field('id,name,picname,price,say,marketPrice,comm,empty,tehui,flash,baoyou')->where('id',$value['goodsID'])->find();   

                unset($list[$key]['goodsID']);
                $goods['picname'] = getThumb($goods["picname"],200,200);
                $goods['picname'] = getRealUrl($goods['picname']);
                $goods['rmb'] = round($goods['price']*$this->rate,1);
                $list[$key] = $goods;
            }


            returnJson(1,'success',[
                'goods'=>$list,
                'fina'=>$fina,
                'jifen'=>$result,
                /*'lastMonth'=>[
                    'money'=>$lastMonth,
                    'rmb'=>round($lastMonth*$this->rate,1)
                ],
                'config'=>[
                    ['jifen'=>$config['jifen1'],'bar'=>$config['back1']],
                    ['jifen'=>$config['jifen2'],'bar'=>$config['back2']],
                    ['jifen'=>$config['jifen3'],'bar'=>$config['back3']],
                    ['jifen'=>$config['jifen4'],'bar'=>$config['back4']],
                    ['jifen'=>$config['jifen5'],'bar'=>$config['back5']],
                ],*/
                'order'=>[
                    'nopay'=>$order1,
                    'share'=>$order2,
                    'peihuo'=>$order3,
                    'peing'=>$order4,
                    'fahuo'=>$order5,
                    'close'=>$order6,
                ],
                'user'=>$user,
            ]);
        }
    }

    public function point(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $fina = $this->getUserMoney($this->user['id']);

            $result = getFundBack($fina['point']);     
            $config = tpCache('member');
            $result['fanli'] = round(($fina['fund']*$result['bar']/100),2);
            $result['baifenbi'] = ($find['point']/12000)*100;

            returnJson(1,'success',[
                'fina'=>$fina,
                'jifen'=>$result, 
                'userID'=>$this->user['id'], 
                'config'=>[
                    ['jifen'=>$config['jifen1'],'bar'=>$config['back1']],
                    ['jifen'=>$config['jifen2'],'bar'=>$config['back2']],
                    ['jifen'=>$config['jifen3'],'bar'=>$config['back3']],
                    ['jifen'=>$config['jifen4'],'bar'=>$config['back4']],
                    ['jifen'=>$config['jifen5'],'bar'=>$config['back5']],
                ]
            ]);
        }
    }

    public function wallet(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}
           
            $fina = $this->getUserMoney($this->user['id']);

            $last_mont_first_date = date('Y-m-1',strtotime('last month'));
            $last_mont_end_date = date('Y-m-d',strtotime(date('Y-m-1').'-1 day'));
            unset($map);
            $map['createTime'] = array('between',array(strtotime($last_mont_first_date),strtotime($last_mont_end_date)+86399));
            $map['memberID'] = $this->user['id'];
            $map['type'] = 7;
            $lastMonth = db("Finance")->where($map)->sum("money");

            returnJson(1,'success',[
                'fina'=>$fina,    
                'lastMonth'=>[
                    'money'=>$lastMonth,
                    'rmb'=>round($lastMonth*$this->rate,1)
                ]
            ]);
        }
    }

    public function share(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $shareUser = input("post.shareUser");
            if($shareUser=='' || !is_numeric($shareUser)){
                returnJson(0,'参数错误');
            }

            $user = db("Member")->where('id',$shareUser)->find();
            if(!$user){
                returnJson(0,'用户信息不存在');
            }

            $fina = $this->getUserMoney($user['id']);

            $result = getFundBack($fina['point']);     

            $result['fanli'] = round($fina['fund']*$result['bar'],2);
            $result['baifenbi'] = ($find['point']/12000)*100;

            //为您推荐 
            $obj = db('GoodsPush');
            $list = $obj->field('goodsID')->where('cateID',3)->limit(10)->order('id desc')->select();
            foreach ($list as $key => $value) {                
                $goods = db("Goods")->field('id,name,picname,price,say,marketPrice,comm,empty,tehui,flash,baoyou')->where('id',$value['goodsID'])->find();   

                unset($list[$key]['goodsID']);
                $goods['picname'] = getThumb($goods["picname"],200,200);
                $goods['picname'] = getRealUrl($goods['picname']);
                $goods['rmb'] = round($goods['price']*$this->rate,1);
                $list[$key] = $goods;
            }

            unset($map);
            $map['userID'] = $user['id'];
            $beginDate = date("Y-m-01");
            $endDate = date('Y-m-d H:i:s', strtotime("$beginDate +1 month -1 second"));
            $beginDate=strtotime($beginDate);
            $endDate=strtotime($endDate);
            $map['createTime'] = array('between',array($beginDate,$endDate));
            $friend = db("Digg")->field('point,headimg')->where($map)->select();

            returnJson(1,'success',[
                'jifen'=>$result, 
                'nickname'=>$user['nickname'],
                'goods'=>$list,
                'friend'=>$friend,
            ]);
        }
    }

    public function digg(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $userID = input('post.userID');
            if ($userID=='' || !is_numeric($userID)) {
                returnJson(0,'缺少参数');
            }

            $user = db('Member')->where('id',$userID)->find();
            if(!$user){
                returnJson(0,'用户不存在');
            }

            if($user['id'] == $this->user['id']){
                returnJson(0,'不能为自己点赞');
            }
            
            unset($map);
            $map['memberID'] = $this->user['id'];
            $map['userID'] = $user['id'];
            $beginDate = date("Y-m-01");
            $endDate = date('Y-m-d H:i:s', strtotime("$beginDate +1 month -1 second"));
            $beginDate=strtotime($beginDate);
            $endDate=strtotime($endDate);
            $map['createTime'] = array('between',array($beginDate,$endDate));
            $res = db("Digg")->where($map)->find();
            if($res){
                returnJson(0,'本月已经为TA点赞，不能重复点赞');
            }

            $config = tpCache("member");

            $result = db("Digg")->insert([
                'userID'=>$user['id'],
                'memberID'=>$this->user['id'],                
                'headimg'=>$this->user['headimg'],
                'point'=>$config['diggPoint'],
                'createTime'=>time()
            ]);
            if($result){                
                $fina = $this->getUserMoney($user['id']);
                //添加财务记录
                $data = array(
                    'type' => 9,
                    'money' => $config['diggPoint'],
                    'memberID' => $user['id'],     
                    'doID' =>  $this->user['id'],
                    'oldMoney'=>$fina['point'],
                    'newMoney'=>$fina['point']+$config['diggPoint'],
                    'admin' => 1,
                    'msg' => $this->user['nickname'].'为您点赞，获得'.$config['diggPoint'].'积分。',
                    'extend1'=>0,
                    'createTime' => time()
                ); 
                db('Finance')->insert( $data );

                $fina['point'] = $fina['point']+$config['diggPoint'];
                $result = getFundBack($fina['point']);
                $result['fanli'] = round($fina['fund']*$result['bar'],2);
                $result['baifenbi'] = ($find['point']/12000)*100;

                //点赞红包
                unset($map);
                $map['couponID'] = 14;
                $map['memberID'] = $this->user['id'];
                $rs = db('CouponLog')->where($map)->find();
                if(!$rs){
                    $coupon = db("Coupon")->field('id,dec')->where('id',14)->find();
                }else{
                    $coupon = '';
                }

                returnJson(1,'success',[
                    'jifen'=>$result,
                    'data'=>['headimg'=>$this->user['headimg'],'point'=>$config['diggPoint']],
                    'coupon'=>$coupon
                ]);
            }else{
                returnJson(0,'操作失败');
            }            
        }
    }

    public function bind(){
        if (request()->isPost()) { 
            $code = input('post.code');
            $mobile = input('post.mobile');

            if ($code=='' || !is_numeric($code)) {
                returnJson(0,'请输入验证码');
            }

            if (!check_mobile($mobile)) {
                returnJson(0,'手机号格式错误！');
            }

            $res = $this->getCodeStatus($code,$mobile);

            if ($res['code']==0) {
                returnJson(0,$res['msg']);
            }

            $map['mobile'] = $mobile;
            $user = db('Member')->where($map)->find();
            if ($user) {
                returnJson(0,'手机号码已存在');
            }

            $data['id'] = $this->user['id'];
            $result = db('Member')->where('id',$this->user['id'])->update(['mobile'=>$mobile]);
            if ($result) {
                unset($map);
                $map['account'] = $mobile;
                $map['regcode'] = $code;
                db('MemberCode')->where($map)->order('id desc')->setField('status',1);
                returnJson(1,'手机绑定成功');
            }else{
                returnJson(0,'操作失败');
            }
        }
    }
    
    public function changePhone(){
        if (request()->isPost()) { 
            $code = input('post.code');
            $mobile = input('post.mobile');

            if ($code=='' || !is_numeric($code)) {
                returnJson(0,'请输入验证码');
            }

            if (!check_mobile($mobile)) {
                returnJson(0,'手机号格式错误！');
            }

            $res = $this->getCodeStatus($code,$this->user['mobile']);

            if ($res['code']==0) {
                returnJson(0,$res['msg']);
            }

            $map['mobile'] = $mobile;
            $user = db('Member')->where($map)->find();
            if ($user) {
                returnJson(0,'手机号码已存在');
            }

            $data['id'] = $this->user['id'];
            $result = db('Member')->where('id',$this->user['id'])->update(['mobile'=>$mobile]);
            if ($result) {
                unset($map);
                $map['account'] = $this->user['mobile'];
                $map['regcode'] = $code;
                db('MemberCode')->where($map)->order('id desc')->setField('status',1);
                returnJson(1,'手机绑定成功');
            }else{
                returnJson(0,'操作失败');
            }
        }
    }

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
            $user['id'] = $this->user['id'];
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
                $result = db('Fav')->where($map)->delete();
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
                $goods = db('Goods')->field('id,name,picname,price,say,marketPrice,comm,empty,tehui,flash,baoyou')->where($map)->find();
                if($goods){
                    $goods['picname'] = getRealUrl($goods['picname']);
                    $goods['rmb'] = round($goods['price']*$this->rate,1);
                }else{
                    $goods = [];
                }                
                $list[$key]['goods'] = $goods;
                $list[$key]['checked'] = false;
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

    //我的收藏
    public function finance(){
        if(request()->isPost()){
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $page = input('post.page/d',1);
            $type = input('post.type');
            $pagesize = input('post.pagesize',10);

            $firstRow = $pagesize*($page-1); 
            
            if($type !='' ){
                $map['type'] = array('in',$type);
            }

            $map['memberID'] = $this->user['id'];
            $obj = db('Finance');
            $count = $obj->where($map)->count();
            $totalPage = ceil($count/$pagesize);
            if ($page < $totalPage) {
                $next = 1;
            }else{
                $next = 0;
            }

            $list = $obj->field('money,newMoney,oldMoney,msg,createTime,type')->where($map)->limit($firstRow.','.$pagesize)->order('id desc')->select();
            foreach ($list as $key => $value) {
                $list[$key]['createTime'] = date("Y-m-d H:i:s",$value['createTime']);
                $list[$key]['typeName'] = getMoneyType($value['type']);
            }
            returnJson(1,'success',['next'=>$next,'data'=>$list,'type'=>config('moneyType')]);
        }
    }

    //每日签到
    public function sign(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $config = tpCache('member');
            $date = date("Y-m-d");
            $map['memberID'] = $this->user['id'];
            $map['signDate'] = $date;
            $list = db('Sign')->where($map)->find();
            if (!$list) {
                $data['signDate'] = $date;
                $data['point'] = $config['sign'];
                $data['memberID'] = $this->user['id'];
                $data['createTime'] = time();
                $list = db('Sign')->insert($data);
                if ($list) {
                    $fina = $this->getUserMoney($this->user['id']);
                    //添加财务记录
                    $data = array(
                        'type' => 1,
                        'money' => $config['sign'],
                        'memberID' => $this->user['id'],     
                        'doID' =>  $this->user['id'],
                        'oldMoney'=>$fina['point'],
                        'newMoney'=>$fina['point']+$config['sign'],
                        'admin' => 1,
                        'msg' => date("m-d").'签到，奖励'.$config['sign'].'积分。',
                        'extend1'=>0,
                        'createTime' => time()
                    ); 
                    db('Finance')->insert( $data );
                }
            }

            $beginDate = strtotime(date("Y-m-1"));
            $beginStr = date("Y-m-d",$beginDate);
            $endDate = strtotime("$beginStr +1 month -1 day");

            $w = date("w",strtotime($beginDate));
            if($w==0){
                $decDay = 6;
            }else{
                $decDay = $w-1;
            }
            $beginDate = $beginDate - $decDay*86400;

            $w = date("w",$endDate);
  
            if($w==0){
                $addDay = 0;
            }else{
                $addDay = 7-$w;
            }
            $endDate = $endDate + $addDay*86400;

            $signNumber = 0;
            $date = [];
            for ($i=$beginDate; $i <= $endDate ; $i=$i+86400) { 
                $map['memberID'] = $this->user['id'];
                $map['signDate'] = date("Y-m-d",$i);
                $res = db("Sign")->where($map)->find();
                if($res){
                    $signNumber++;
                    array_push($date, ['day'=>date("d",$i),'sign'=>1]);
                }else{
                    array_push($date, ['day'=>date("d",$i),'sign'=>0]);
                }
            } 

            $count = db("Sign")->where('memberID',$this->user['id'])->count();

            $list = db("Sign")->field('point,signDate')->where('memberID',$this->user['id'])->order('id desc')->limit(10)->select();

            returnJson(1,'success',['signNumber'=>$signNumber,'total'=>$count,'date'=>$date,'data'=>$list,'month'=>date("Y-m")]);
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
                        'type' => 1,
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
            returnJson(1,'操作成功');
        }
    }

    //上传图片
    public function upload(){
        if(!checkFormDate()){
            returnJson(0,'非法提交');
        }

        $path = '.'.config('UPLOAD_PATH');

        if(!is_dir($path)){
            mkdir($path);
        }

        $file = request()->file('file');
        if(!$file){
            returnJson(0,'请选择要上传的图片');
        }
        $info = $file->validate(['size'=>config('image_size')*1000*1000,'ext'=>config('image_exts')])->move($path);

        if($info){
            $fname=str_replace('\\','/',$info->getSaveName());
            $fname = config('UPLOAD_PATH').$fname;    

            $image = \think\Image::open('.'.$fname);
            // 按照原图的比例生成一个最大为150*150的缩略图并保存为thumb.png
            $image->thumb(config('IMAGE_MAX_WIDTH'), config('IMAGE_MAX_HEIGHT'))->save('.'.$fname);
            returnJson(1,'success',['url'=>$fname,'realUrl'=>getRealUrl($fname)]);
        }else{
            //是专门来获取上传的错误信息的
            returnJson(0,$file->getError());
        }
    }
        
    //上传头像
    public function uploadFace(){
        if (request()->isPost()) {
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $image = input('post.image');
            $path = config('UPLOAD_PATH').'face/';
            if($image==''){
                returnJson(0,'请选择照片');
            }
            $fileName = createNonceStr();
            $fileUrl = $this->base64ToImg($path,$fileName,$image);
            $fileUrl = getUserFace($fileUrl);
            returnJson(1,'success',['face'=>$fileUrl]);
        }
    }

    //未领取的优惠券
    public function couponList(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $data= [];
            $map['status'] = 1;
            $map['register'] = 0;
            $list = db("Coupon")->where($map)->select();
            foreach ($list as $key => $value) {
                unset($map);
                $map['couponID'] = $value['id'];
                $map['memberID'] = $this->user['id'];
                $count = db("CouponLog")->where($map)->count();
                if($count>=$value['number']){
                    unset($value);
                }else{
                    array_push($data,$value);
                }
            }

            $ad = db("Ad")->field('name,intr,picname,url,appUrl,goodsID')->where('cid',6)->order('sort asc,id desc')->select();
            foreach ($ad as $key => $value) {
                $value['picname'] = getThumb($value["picname"],1000,300);
                $ad[$key]['picname'] = getRealUrl($value['picname']);
            }
            returnJson(1,'success',['data'=>$data,'ad'=>$ad]);
        }
    }

    //我的优惠券
    public function coupon(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $type = input('param.type');
            $page = input('post.page/d',1);
            $pagesize = input('post.pagesize',10);
            $firstRow = $pagesize*($page-1); 

            $map['status'] = 0;
            $map['endTime'] = array('gt',time());
            $map['memberID'] = $this->user['id'];
            $number1 = db("CouponLog")->where($map)->count();

            unset($map);
            $map['status'] = 1;
            $map['memberID'] = $this->user['id'];
            $number2 = db("CouponLog")->where($map)->count();

            unset($map);
            $map['status'] = 0;
            $map['endTime'] = array('lt',time());
            $map['memberID'] = $this->user['id'];
            $number3 = db("CouponLog")->where($map)->count();

            unset($map);
            if($type==1){//未使用
                $map['status'] = 0;
                $map['endTime'] = array('gt',time());
            }elseif($type==2){//已使用
                $map['status'] = 1;
            }elseif($type==3){//已失效
                $map['status'] = 0;
                $map['endTime'] = array('lt',time());
            }
            $map['memberID'] = $this->user['id'];
            $obj = db('CouponLog');
            $count = $obj->where($map)->count();
            $totalPage = ceil($count/$pagesize);
            if ($page < $totalPage) {
                $next = 1;
            }else{
                $next = 0;
            }
            $list = $obj->where($map)->limit($firstRow.','.$pagesize)->order('id desc')->select();
            foreach ($list as $key => $value) {
                if($value['useTime']>0){
                    $list[$key]['useTime'] = date("Y-m-d H:i:s",$value['useTime']);
                }
                $list[$key]['endTime'] = date("Y-m-d H:i:s",$value['endTime']);
                $list[$key]['createTime'] = date("Y-m-d H:i:s",$value['createTime']);
                if($value['goodsID']!=''){
                    $ids = explode(",",$value['goodsID']);
                    unset($map);
                    $map['id'] = array('in',$ids);
                    $map['show'] = 1;
                    $goods = db("Goods")->field('id as goodsID,name')->where($map)->select();
                    $list[$key]['goods'] = $goods;
                }        
            }
            returnJson(1,'success',['next'=>$next,'data'=>$list,'count'=>['number1'=>$number1,'number2'=>$number2,'number3'=>$number3]]);
        }
    }

    //领取优惠券
    public function doCoupon(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $couponID = input('post.couponID');
            $code = input('post.code');

            if ($couponID!='' || is_numeric($couponID)) {
                //$map['status'] = 1;
                $map['id'] = $couponID;
                $list = db('Coupon')->where($map)->find();
                if(!$list){
                    returnJson(0,'优惠券不存在');
                }

                $where['couponID'] = $couponID;
                $where['memberID'] = $this->user['id'];
                $count = db("CouponLog")->where($where)->count();
                if($count>=$list['number']){
                    returnJson(0,$list['name'].'每人最多领取'.$list['number'].'张');
                }

                $data = [
                    'memberID'=>$this->user['id'],
                    'nickname'=>$this->user['nickname'],
                    'couponID'=>$couponID,
                    'code'=>$this->getCouponNo(),
                    'name'=>$list['name'],
                    'desc'=>$list['desc'],
                    'full'=>$list['full'],
                    'dec'=>$list['dec'],
                    'intr'=>$list['intr'],
                    'goodsID'=>$list['goodsID'],
                    'status'=>0,
                    'useTime'=>0,
                    'endTime'=>time()+86400*$list['day'],
                    'createTime'=>time(),
                ];
                $res = db("CouponLog")->insert($data);
                if ($res) {
                    returnJson(1,'success',['endTime'=>date("Y-m-d H:i:s",$data['endTime'])]);
                }else{
                    returnJson(0,'领取失败');
                }
            }elseif($code!=''){
                $map['code'] = $code;
                $map['memberID'] = 0;
                $list = db("CouponLog")->where($map)->find();
                if (!$list) {
                    returnJson(0,'无效的优惠券码');
                }

                $coupon = db("Coupon")->where('id',$list['couponID'])->find();
                if (!$coupon) {
                    returnJson(0,'优惠券码已失效');
                }

                $where['couponID'] = $coupon['id'];
                $where['memberID'] = $this->user['id'];
                $count = db("CouponLog")->where($where)->count();
                if($count>=$coupon['number']){
                    returnJson(0,$coupon['name'].'每人最多领取'.$coupon['number'].'张');
                }
                $data = [
                    'memberID'=>$this->user['id'],
                    'nickname'=>$this->user['nickname'],
                    'endTime'=>time()+86400*$coupon['day']
                ];
                $res = db("CouponLog")->where($map)->update($data);
                if ($res) {
                    returnJson(1,'success',['endTime'=>date("Y-m-d H:i:s",$data['endTime'])]);
                }else{
                    returnJson(0,'领取失败');
                }
            }else{
                returnJson(0,'领取失败');
            }       
        }
    }
}