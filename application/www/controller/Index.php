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

        //广告
        $banner = db("Ad")->field('name,picname,url,goodsID')->where('cid',14)->order('sort asc,id desc')->select();
        $ad1 = db("Ad")->field('name,picname,url,goodsID')->where('cid',15)->limit(1)->order('sort asc,id desc')->select();
        $ad2 = db("Ad")->field('name,picname,url,goodsID')->where('cid',16)->limit(3)->order('sort asc,id desc')->select();
        $this->assign('banner',$banner);
        $this->assign('ad1',$ad1);
        $this->assign('ad2',$ad2);
        
        //公告
        unset($map);
        $map['cid'] = 7;
        $map['del'] = 0;
        $map['status'] = 1;
        $notice = db("Article")->field('id,title')->where($map)->order('sort asc,id desc')->limit(7)->select();
        $this->assign('notice',$notice);

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

        //奶粉
        unset($map);
        $naifen = db("GoodsCate")->field('id,path,name')->where('fid',1)->order('sort asc')->limit(8)->select();
        foreach ($naifen as $key => $value) {
        	unset($map);
	        $map['show'] = 1;
	        $map['cid|cid1'] = $value['id'];
	        $goods = db("Goods")->field('id,name,picname,say,price,marketPrice,comm')->where($map)->order('sort desc,id desc')->limit(5)->select();
	        foreach ($goods as $k => $val) {
	            $goods[$k]['picname'] = getThumb($val["picname"],400,400);
	            $goods[$k]['rmb'] = round($val['price']*$this->rate,1);
	        }
	        $naifen[$key]['goods'] = $goods;
        }
        $this->assign('naifen',$naifen);

        //孕妈
        unset($map);
        $yunma = db("GoodsCate")->field('id,path,name')->where('fid',10)->order('sort asc')->limit(8)->select();
        foreach ($yunma as $key => $value) {
            unset($map);
            $map['show'] = 1;
            $map['cid|cid1'] = $value['id'];
            $goods = db("Goods")->field('id,name,picname,say,price,marketPrice,comm')->where($map)->order('sort desc,id desc')->limit(5)->select();
            foreach ($goods as $k => $val) {
                $goods[$k]['picname'] = getThumb($val["picname"],400,400);
                $goods[$k]['rmb'] = round($val['price']*$this->rate,1);
            }
            $yunma[$key]['goods'] = $goods;
        }
        $this->assign('yunma',$yunma);

        //中老年区
        unset($map);
        $laonian = db("GoodsCate")->field('id,path,name')->where('fid',4)->order('sort asc')->limit(8)->select();
        foreach ($laonian as $key => $value) {
            unset($map);
            $map['show'] = 1;
            $map['cid|cid1'] = $value['id'];
            $goods = db("Goods")->field('id,name,picname,say,price,marketPrice,comm')->where($map)->order('sort desc,id desc')->limit(5)->select();
            foreach ($goods as $k => $val) {
                $goods[$k]['picname'] = getThumb($val["picname"],400,400);
                $goods[$k]['rmb'] = round($val['price']*$this->rate,1);
            }
            $laonian[$key]['goods'] = $goods;
        }
        $this->assign('laonian',$laonian);

        //本周特价
        unset($map);
        $tejia = db("GoodsCate")->field('id,path,name')->where('fid',69)->order('sort asc')->limit(8)->select();
        foreach ($tejia as $key => $value) {
            unset($map);
            $map['show'] = 1;
            $map['cid|cid1'] = $value['id'];
            $goods = db("Goods")->field('id,name,picname,say,price,marketPrice,comm')->where($map)->order('sort desc,id desc')->limit(5)->select();
            foreach ($goods as $k => $val) {
                $goods[$k]['picname'] = getThumb($val["picname"],400,400);
                $goods[$k]['rmb'] = round($val['price']*$this->rate,1);
            }
            $tejia[$key]['goods'] = $goods;
        }
        $this->assign('tejia',$tejia);

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

    public function cartNumber(){
        if($this->user['id']>0){
            $data['token'] = $this->user['token'];
            $result = $this->https_post($this->api.'/api/cart/getNumber',$data);
            $result = json_decode($result,true);
            $number = $result['body']['cartNumber'];
        }else{
            $number = 0;
        }
        return ['number'=>$number];
    }

    public function notice(){        
        $map['cid'] = 7;
        $map['del'] = 0;
        $map['status'] = 1;
        //查询数据
        $list = db('Article')->where($map)->order('id desc')->paginate(10,false,['query'=>request()->param()]);
        $page = $list->render();
        $this->assign('list',$list);  
        $this->assign('page',$page);  
        return view();
    }

    public function view(){
        $id = input('param.id');
        $map['id'] = $id;
        $map['status'] = 1;
        $map['del'] = 0;
        $list = db("Article")->where($map)->find();
        if(!$list){
            $this->error("信息不存在");
        }
        $this->assign('list',$list);
        return view();
    }
}
