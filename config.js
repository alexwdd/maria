const global = {
    APP_NAME: '2019东润银基•望京杯青少年书画大赛',
    APP_ID:'wx4c37645927f396a0',
    //判断是否是微信浏览器的函数
    isWeiXin : function(){
        //window.navigator.userAgent属性包含了浏览器类型、版本、操作系统类型、浏览器引擎类型等信息，这个属性可以用来判断浏览器类型
        var ua = window.navigator.userAgent.toLowerCase();
        //通过正则表达式匹配ua中是否含有MicroMessenger字符串
        if(ua.match(/MicroMessenger/i) == 'micromessenger'){
            return true;
        }else{
            return false;
        }
    },
    isIOS : function(){
        if (navigator.userAgent.match(/(iPhone|iPod|iPad);?/i)) {
            return true;
        }
    },
    checkMobile:function(checkVal){
        var reg = /^1[3|4|5|6|7|8|9][0-9]{9}$/;
		if(!reg.test(checkVal)){
            return false;
        }else{
            return true;
        }
    },
    checkChinese:function(checkVal){
        var reg = /^[\u4E00-\u9FA5]{1,5}$/;
        if(!reg.test(checkVal)){
            return false;
        }else{
            return true;
        }
    },
    checkPassword:function(checkVal){
        if (checkVal.length<6 || checkVal.length>20) {
            return false;
        }else{
            return true;
        }
    }

};
export default global

