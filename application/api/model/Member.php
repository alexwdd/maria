<?php
namespace app\api\model;
use think\Model;
use think\Request;

class Member extends Model
{ 
	public function add(array $data = [],$father)
	{
		$validate = validate('Member');
		if(!$validate->scene('add')->check($data)) {
			return array('code'=>0,'msg'=>$validate->getError());
		}

		$request= Request::instance(); 
		$data['password'] = md5($data['password']);
        $data['createTime'] = time();
        $data['disable'] = 1;
        $data['createIP'] = $request->ip();

        //生成token
        $str = md5(uniqid(md5(microtime(true)),true)); 
        $token = sha1($str);
  		$data['token'] = $token;
  		$data['token_out'] = time()+3600;   

		$this->allowField(true)->save($data);
		if($this->id > 0){ 
            return array('code'=>1,'msg'=>$this->id,'token'=>$token);
        }else{
        	return array('code'=>0,'msg'=>'操作失败');
        }
	}
}