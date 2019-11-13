<?php
namespace app\www\controller;
use think\Request;
use think\Cookie;

class Brand extends Common
{
	public function index()
	{
        $map['cate'] = 4;
        $list = db('OptionItem')->field('id as cid,name')->where($map)->order('sort asc,id asc')->select();
        foreach ($list as $key => $value) {
            $child = db('Brand')->field('id,name,logo')->where('cid',$value['cid'])->order('sort asc,py asc')->select();
            foreach ($child as $k => $val) {
                $child[$k]['logo'] = getThumb($val["logo"],200,125);
            }
            $list[$key]['child'] = $child;
        }
        $this->assign('list',$list);
		return view();
	}
}
