<?php
namespace app\www\controller;

class Index extends Common
{
	public function index()
	{
    	if (request()->isMobile()) {
			$this->redirect('http://m.aumaria.com');
		}

		/*$token = '265cb04a5898e15d24dc11c5955cbbd9bc06591b';
		$cryptStr = $token.','.request()->ip();
        $flag = think_encrypt($cryptStr,config('DATA_CRYPT_KEY'));
        \think\Cookie::set('flag', $flag, ['prefix'=>'www','expire'=>86400]);*/

        

        //今日抢购
        $flash = [];
        foreach ($this->flash as $key => $value) {
            if($key<5){
                array_push($flash,$value);
            }
        }
        foreach ($flash as $key => $value) {
            unset($flash[$key]['spec']);
            unset($flash[$key]['pack']);
            $goods = db("Goods")->field('id,name,picname,price,say,marketPrice')->where('id',$value['goodsID'])->find();
            $flash[$key]['name'] = $goods['name'];

            $goods['picname'] = getThumb($goods["picname"],400,400);           
            $flash[$key]['picname'] = $goods['picname'];
            $flash[$key]['marketPrice'] = $goods['marketPrice'];
            $flash[$key]['rmb'] = round($value['price']*$this->rate,1);
        }

        $flashTime = checkFlashTime($config['flashTime']);
        $this->assign('flash',$flash);
        $this->assign('flashTime',$flashTime);

        //母婴
        unset($map);
        $naifen = db("GoodsCate")->field('id,path,name')->where('fid',1)->order('sort asc')->limit(8)->select();
        foreach ($naifen as $key => $value) {
        	unset($map);
        	$map['comm'] = 1;
	        $map['show'] = 1;
	        $map['cid'] = $value['id'];
	        $goods = db("Goods")->field('id,name,picname,say,price,marketPrice,comm')->where($map)->order('sort desc,id desc')->limit(5)->select();
	        foreach ($goods as $k => $val) {
	            $goods[$k]['picname'] = getThumb($val["picname"],400,400);
	            $goods[$k]['rmb'] = round($val['price']*$this->rate,1);
	        }
	        $naifen[$key]['goods'] = $goods;
        }
        $this->assign('naifen',$naifen);

        //推荐商品
        unset($map);
        $map['comm'] = 1;
        $map['show'] = 1;
        $commend = db("Goods")->field('id,name,picname,say,price,marketPrice,comm')->where($map)->order('sort desc,id desc')->limit(20)->select();
        foreach ($commend as $key => $value) {
            $commend[$key]['picname'] = getThumb($value["picname"],400,400);
            $commend[$key]['rmb'] = round($value['price']*$this->rate,1);
        }
        $slide = [];
        $q = [];
        $i = 1;
        foreach ($commend as $key => $value) {
            array_push($q,$commend[$key]);
            if ($i%5==0) {
                array_push($slide,$q);
                $q = [];
            }
            $i++;
        }
        if (count($q)>0) {
            array_push($slide,$q);
        }
        $this->assign('slide',$slide);
		return view();
	}
}
