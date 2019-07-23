<?php
namespace app\api\controller;

class Account extends Auth {
    
    //个人信息
    public function userinfo(){
        if (request()->isPost()) { 
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $user['face'] = getUserFace($this->user['face']);
            $user['name'] = $this->user['name'];
            $user['depart'] = $this->user['depart'];
            $user['junxian'] = $this->user['junxian'];
            $user['mobile'] = $this->user['mobile'];
            $user['wechat'] = $this->user['wechat'];
            returnJson(1,'success',['user'=>$user]);
        }
    }

    //获取头像
    public function getFace(){
        $face = getUserFace($this->user['face']);
        returnJson(1,'success',['face'=>$face]);
    }

    //保存头像
    public function setFace(){
        if (request()->isPost()) {
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $face = input('post.face');
            if ($face=='') {
                returnJson(0,'请选择照片');
            }
            $map['id'] = $this->user['id'];
            db("Member")->where($map)->setField('face',$face);
            returnJson(1,'头像保存成功');
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

    //保存姓名
    public function setName(){
        if (request()->isPost()) {
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $name = input('post.name');
            if ($name=='') {
                returnJson(0,'请输入姓名');
            }
            $map['id'] = $this->user['id'];
            db("Member")->where($map)->setField('name',$name);
            returnJson(1,'姓名保存成功');
        }
    }

    //保存姓名
    public function setWechat(){
        if (request()->isPost()) {
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $wechat = input('post.wechat');
            if ($wechat=='') {
                returnJson(0,'请输入微信号');
            }
            $map['id'] = array('neq',$this->user['id']);
            $map['wechat'] = $wechat;
            $count = db("Member")->where($map)->count();
            if ($count>0) {
                returnJson(0,'微信号重复');
            }
            unset($map);
            $map['id'] = $this->user['id'];
            db("Member")->where($map)->setField('wechat',$wechat);
            returnJson(1,'微信保存成功');
        }
    }

    //修改密码
    public function password(){
        if (request()->isPost()) {
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $oldpassword = trim(input('post.oldpassword'));
            $password = trim(input('post.password'));
            $repassword = trim(input('post.repassword'));
            $id = $this->user['id'];

            if($this->user['password']!=md5($oldpassword)){
                returnJson(0,'原始密码错误！');
            }

            if($password!=$repassword){
                returnJson(0,'两次密码不一致！');
            }

            $user=db('Member');            
            $data['password']=md5($password);
            $rs = $user->where(array('id'=>$id))->update($data);
            if ($rs) {
                returnJson(1,'密码修改成功');  
            }else{
                returnJson(0,'操作失败');
            }
        }
    }

    public function comment(){
        if (request()->isPost()) {
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $articleID = input('post.articleID');
            $content = input('post.content');
            if ($articleID=='' && !is_numeric($articleID)) {
                returnJson('-1','参数错误');
            }
            if ($content=='') {
                returnJson('-1','请输入评论内容');
            }

            $map['id'] = $articleID;
            $map['del'] = 0;
            $map['status'] = 1;
            $obj = db('Article');
            $list = $obj->where($map)->find();
            if (!$list) {
                returnJson('-1','文章不存在');
            }

            $data = [
                'articleID'=>$list['id'],
                'memberID'=>$this->user['id'],
                'nickname'=>$this->user['name'],
                'headimg'=>$this->user['face'],
                'content'=>$content,
                'status'=>1,
                'createTime'=>time(),
            ];

            $res = db('ArticleComment')->insertGetId($data);
            if ($res) {
                $list = db("ArticleComment")->where(array('id'=>$res))->order('id desc')->limit(1)->select();
                foreach ($list as $key => $value) {
                    $list[$key]['createTime'] = getLastTime($value['createTime']);
                }
                returnJson(0,'success',$list);
            }else{
                returnJson('-1','操作失败');
            }                
        }
    }

    //点赞
    public function like(){
        if (request()->isPost()) {
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $articleID = input('post.articleID');
            if ($articleID=='' && !is_numeric($articleID)) {
                returnJson(0,'参数错误');
            }
            $map['articleID'] = $articleID;
            $map['memberID'] = $this->user['id'];
            $res = db('ArticleDigg')->where($map)->find();
            if ($res) {
                $result = db('ArticleDigg')->where($map)->delete();
                if ($result) {
                    returnJson(1,'取消点赞');
                }else{
                    returnJson(0,'操作失败');
                }
            }else{
                $data = ['articleID'=>$articleID,'memberID'=>$this->user['id']];
                $result = db('ArticleDigg')->insert($data);
                if ($result) {
                    returnJson(1,'已点赞');
                }else{
                    returnJson(0,'操作失败');
                }                
            }
        }
    }

    //收藏
    public function fav(){
        if (request()->isPost()) {
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $articleID = input('post.articleID');
            if ($articleID=='' && !is_numeric($articleID)) {
                returnJson('-1','参数错误');
            }
            $map['articleID'] = $articleID;
            $map['memberID'] = $this->user['id'];
            $res = db('ArticleFav')->where($map)->find();
            if ($res) {
                $result = db('ArticleFav')->where($map)->delete();
                if ($result) {
                    returnJson(1,'收藏');
                }else{
                    returnJson(0,'操作失败');
                }
            }else{
                $data = ['articleID'=>$articleID,'memberID'=>$this->user['id']];
                $result = db('ArticleFav')->insert($data);
                if ($result) {
                    returnJson(1,'已收藏');
                }else{
                    returnJson(0,'操作失败');
                }                
            }
        }
    }

    public function myfav(){
        if(request()->isPost()){
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $ids = db("ArticleFav")->where('memberID',$this->user['id'])->column('articleID');
            

            $page = input('post.page/d',1); 
            $pagesize =10;
            $firstRow = $pagesize*($page-1); 

            $map['id'] = array('in',$ids);
            $map['del'] = 0;
            $map['status'] = 1;
            $obj = db('Article');
            $count = $obj->where($map)->count();
            $totalPage = ceil($count/$pagesize);
            if ($page < $totalPage) {
                $next = 1;
            }else{
                $next = 0;
            }

            $list = $obj->field('id,title,picname,hit,createTime')->where($map)->limit($firstRow.','.$pagesize)->order('id desc')->select();
            foreach ($list as $key => $value) {
                if ($value['picname']!='') {
                    $image = explode(",", $value['picname']);
                    foreach ($image as $k => $val) {
                        $image[$k] = getRealUrl($val);
                    }
                    $list[$key]['picname'] = $image;
                    if (count($image)>1) {
                        $list[$key]['image'] = 1;
                    }else{
                        $list[$key]['image'] = 0;
                    }
                }
                $list[$key]['createTime'] = date("Y-m-d",$value['createTime']);
            }
            
            returnJson(1,'success',['next'=>$next,'data'=>$list]);
        }
    }

    //我的消息
    public function message(){
        if(request()->isPost()){
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $page = input('post.page/d',1); 
            $pagesize =10;
            $firstRow = $pagesize*($page-1); 

            $map['memberID'] = $this->user['id'];
            $obj = db('Message');
            $count = $obj->where($map)->count();
            $totalPage = ceil($count/$pagesize);
            if ($page < $totalPage) {
                $next = 1;
            }else{
                $next = 0;
            }

            $list = $obj->field('id,title,read,createTime')->where($map)->limit($firstRow.','.$pagesize)->order('id desc')->select();
            foreach ($list as $key => $value) {
                $list[$key]['createTime'] = date("Y-m-d",$value['createTime']);
            }
            
            returnJson(1,'success',['next'=>$next,'data'=>$list]);
        }
    }

    public function read(){
        if(request()->isPost()){
            if(!checkFormDate()){returnJson(0,'ERROR');}

            $id = input('post.id');
            if ($id=='' || !is_numeric($id)) {
                returnJson(0,'参数错误');
            }
            
            $map['id'] = $id;
            $map['memberID'] = $this->user['id'];
            $list = db('Message')->where($map)->find();
            if ($list) {
                db('Message')->where($map)->setField('read',1);
                $list['createTime'] = date("Y-m-d",$list['createTime']);
                returnJson(1,'success',['data'=>$list]);
            }else{
                returnJson(0,'信息不存在');
            }
        }
    }
}