<?php
namespace app\api\validate;

use think\Validate;

class Member extends Validate
{
    protected $rule =   [        
        'mobile' => 'require|unique:member',
        'password' => 'require|length:6,20',
        'name' => 'require',
        'sn' => 'require|unique:member',
        'depart'  => 'require',
        'junxian'  => 'require',
    ];

    protected $message  =   [
        'mobile.require'       => '手机号不能为空',
        'mobile.unique'       => '手机号重复',        
        'password.require'       => '请输入密码',
        'password.length'       => '密码应为6-20位', 
        'name.require'       => '姓名不能为空',
        'sn.require'       => '身份证号不能为空',
        'sn.unique'       => '身份证号重复',
        'depart.require'       => '部门不能为空',
        'junxian.require'       => '消防救援衔不能为空',
    ];

    protected $scene = [
        'add' => ['mobile','password','name','sn','depart','junxian']
    ];

}


