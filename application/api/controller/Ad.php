<?php
namespace app\api\controller;

class Ad extends Common
{
    public function index(){
    	if (request()->isPost()) {                        
            if(!checkFormDate()){returnJson(0,'ERROR');}
            $cid = input('post.cid/d',0);

            $ad = db("Ad")->field('name,picname,url,goodsID')->where('cid',$cid)->order('sort asc,id desc')->select();
            foreach ($ad as $key => $value) {
            	$ad[$key]['picname'] = getRealUrl($value['picname']);
            }
            
            returnJson(1,'success',[
            	'data'=>$ad
            ]);
        }
    }	
}