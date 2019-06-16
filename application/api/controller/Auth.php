<?php
namespace app\api\controller;

class Auth extends Common
{
    public $user;
    
	public function _initialize(){
        parent::_initialize();

        //检查token
        $token = input('post.token');
        if (!$token) {
            returnJson('999','账户超时请重新登录！');
        }
        $map['token'] = $token;
        $map['disable'] = 0;
        $map['token_out'] = array('gt',time());
        $list = db('Member')->where($map)->find();
        if ($list) {
            $this->user = $list;
            $data['token_out'] = time()+2592000; 
            $r = db('Member')->where($map)->update($data);
        }else{
            returnJson('999','账户超时请重新登录！');
        }
    } 

    public function base64ToImg($path , $name , $data){
        if (preg_match('/^(data:\s*image\/(\w+);base64,)/', $data, $result)){
            $type = $result[2];
            if(!in_array($type,array("jpg","png","bmp","jpeg","gif"))){
                return false;
            }
            $new_file = $path.date('Ym',time())."/";            
            if(!file_exists($new_file)){
                //检查是否有该文件夹，如果没有就创建，并给予最高权限
                mkdir('../'.$new_file, 0700, true);
            }
            $new_file = $new_file.$name.".{$type}";  
            if (file_put_contents('..'.$new_file, base64_decode(str_replace($result[1], '', $data)))){
                return $new_file;
            }else{
                return false;
            }
        }
    }
}
