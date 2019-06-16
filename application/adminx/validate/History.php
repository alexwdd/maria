<?php
namespace app\adminx\validate;

use think\Validate;

class History extends Validate
{
    protected $rule =   [
        'name'  => 'require',
        'date'  => 'require',
        'item'  => 'require'
    ];

    protected $message  =   [
        'name.require'      => '医院名称不能为空',
        'date.require'      => '日期不能为空',
        'item.require'      => '请选择检查项目'
    ];
}