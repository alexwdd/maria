# maria

# 注意
	加入团购后，自动删除一定要看下

# 全局通用的方法
	getFlashNumber 	商品限时抢购已销售数量
	checkInFlash 	商品是否在限时抢购中
	getGoodsDetail	返回商品的价格，套餐，规格型号
	getGoodsPrice	获取商品价格
	getYunfeiJson	获取包裹
	getCouponNo		生成随机优惠券码
	getRate			当前汇率
	getCartInfo		获取购物车商品的信息，总金额
	checkCoupon		检查优惠券是否可用
	getOrderNo		获取随机订单号
	getUserMoney	获取用户财产
	autoCoupon		注册就送优惠券
	base64ToImg		base64转图片
	getCodeStatus	检查短信验证码是否正确
	createSingleOrder	创建包裹订单号
	saveAuePng	生成电子面单
	lock	防止重复提交

# 工具栏的方法
	action			不开启新窗口，直接post
	selectOpen		选择打开新窗口，属性window=1 打开原生窗口
	add				添加
	refresh			刷新数据
	url	 			跳转到url
	back 			返回上页

# 打包顺序
	1 1个可混
	2 3个可混
	3 处理C类，循环c类插入到现有包裹中，不能插入创建新包裹。
	4 遍历剩余商品，插入到现有包裹中，不能插入创建新包裹