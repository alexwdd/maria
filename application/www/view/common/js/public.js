layui.use(['form','element'], function(){

    var element = layui.element;

    var form = layui.form;          
    form.on('submit(go)', function(data){
        if (data.field.remember==1){
            localStorage.setItem('userNumber',data.field.userNumber);
        }
        var load = layer.load(0,{shade: [0.7, '#000000']});
        var formUrl = data.elem.getAttribute("url");
        $.ajax({
            url:formUrl,
            method:'post',
            data:data.field,
            dataType:'JSON',
            success:function(res){
                layer.close(load);
                if(res.code == 1){
                    if (res.msg!=''){
                        layer.open({
                            type:0, 
                            icon:1,
                            content:res.msg,
                            time:3000,
                            end: function(){ 
                                if(res.url!='' && res.url!=undefined && res.url!="undefined"){
                                    if (res.data=='reload') {
                                        window.location.reload();
                                    }else{
                                        window.location.href = res.url;
                                    }                                   
                                }
                            } 
                        });
                    }else{
                        if(res.url!='' && res.url!=undefined && res.url!="undefined"){
                            if (res.data=='reload') {
                                window.location.reload();
                            }else{
                                window.location.href = res.url;
                            }                                   
                        }
                    }                        
                }else{
                    layer.alert(res.msg);
                }
            },
            error:function (data) {
                layer.close(load);
                layer.alert("服务器连接失败");
            }
        })
        return false;
    });


    //自定义验证规则
    form.verify({
        _mobile: function(value) {
            if(value !='') {
                if (!checkMobile(value)) {
                    return '请输入正确的手机号码';
                }
            }
        },
        __mobile: function(value) {
            if (!checkMobile(value)) {
                return '请输入正确的手机号码';
            }
        },
        _url: function(value) {
            if(value !='') {
                if (!checkUrl(value)) {
                    return '请输入正确URL格式';
                }
            }
        },
        __url: function(value) {
            if (!checkUrl(value)) {
                return '请输入正确URL格式';
            }
        },
        __username: function(value) {
            if (!checkWordLong(value,2,8)) {
                return '请输入用户名2-8个字符';
            }
        },
        _password: function(value) {
            if(value !='') {
                if (!checkWordLong(value,6,12)) {
                    return '请输入密码6-12个字符';
                }
            }
        },
        __password: function(value) {
            if (!checkWordLong(value,6,12)) {
                return '请输入密码6-12个字符';
            }
        },
        __repassword: function(value) {
            if (!checkRepassword(value)) {
                return '两次密码不同';
            }
        },
        _cardNo: function(value) {
            if(value !='') {
                if (!checkCardNo(value)) {
                    return '请输入正确身份证号';
                }
            }
        },
        __cardNo: function(value) {
            if (!checkCardNo(value)) {
                return '请输入正确身份证号';
            }
        },
        sign: function(value) {
            if(value =='') {return '请输入签名，中文1个汉字，英文不超过1个单词';}
            var reg = /^[\u4E00-\u9FA5]{1,500}$/;
            if(reg.test(value)){//中文
                if (value.length>1){
                    return '中文只能1个汉字';
                }
            }else{
                if (value.indexOf(' ') >= 0){
                    return '英文不能超过1个单词';
                }
            }
        }
    });
});

//验证手机号码
function checkMobile(numStr){ 
    var pattern = /^1[3|4|5|6|7|8|9][0-9]{9}$/;
    flag = pattern.test(numStr);
    if(!flag){
        return false;
    }else{
        return true;
    }
}

//验证URL
function checkUrl(v){
    var strRegex = "^((https|http|ftp|rtsp|mms)://)?[a-z0-9A-Z]{0,20}\.[a-z0-9A-Z][a-z0-9A-Z]{0,61}?[a-z0-9A-Z]\.com|net|cn|cc (:s[0-9]{1-4})?/$";
    var re = new RegExp(strRegex);
    if (re.test(v)) {
        return true;
    } else {
        return false;
    }
}

//验证邮箱
function checkEmail(v){
    var pattern = /^([a-zA-Z0-9_-])+(\.([a-zA-Z0-9_-])+)*@([a-zA-Z0-9_-])+(\.([a-zA-Z0-9_-])+)+$/;
    flag = pattern.test(v);
    if(flag){
        return true;
    }else{
        return false;
        }
}

//验证字符长度
function checkWordLong(v,min,max){  
    if(v.length>=min && v.length<=max){
        return true;
    }else{
        return false;
        }
}

//验证重复密码
function checkRepassword(v){
    if(v==$("#password").val()){
        return true;
    }else{
        return false;
        }
}

//验证身份证号码
function checkCardNo(v){
    var pattern = /(^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$)|(^[1-9]\d{5}\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{2}[0-9Xx]$)/;
    flag = pattern.test(v);
    if(flag){
        return true;
    }else{
        return false;
        }
}

$(function() {
    $(".dis_add").mouseenter(function() {
        $(".hide_add").css({
            display: "block"
        })
    }).mouseleave(function() {
        $(".hide_add").css({
            display: "none"
        })
    });
    $(".hide_add ul li a").click(function() {
        $(".hide_add").css({
            display: "none"
        })
    });
    $(".hide_add ul li").click(function() {
        $(".hide_add ul li").find("a").removeClass("selected");
        $(this).find("a").addClass("selected")
    });
    $(".hide_add ul li a").click(function() {
        $(".hide_add").css({
            display: "none"
        })
    });
    $(".dao_list a").click(function() {
        $(this).addClass("color").siblings().removeClass("color")
    });
    $(".cates").mouseenter(function() {
        var cat = $(this).attr("mt-ct");
        $(".b-" + cat + "").show().siblings().hide()
    });

    $(".important").mouseleave(function() {
        $(".import_list").hide()
    });

    $("aside ul li").mouseenter(function() {
        $(this).addClass("yanses").siblings().removeClass("yanses")
    });

    $('.indexCate aside').css({display: "block"});
    $(".inCate").mouseenter(function() {
        $("aside").css({
            display: "block",
            background: "#fff"
        })
    }).mouseleave(function() {
        $(".inCate aside").css({display: "none"})
    })
    //导航fix顶部
    $(window.document).scroll(function() {
        if ($(window).scrollTop() > 500) {
            $(".dao_hang").addClass("fixed_dh");
            $(".indexCate aside").css({display: "none"});
            $(".advertisement").css({display: "none"});//公告

            $(".indexCate").mouseenter(function() {
                $("aside").css({
                    display: "block",
                    background: "#fff"
                })
            }).mouseleave(function() {
                $(".indexCate aside").css({display: "none"})
            })
        };
        
        if ($(window).scrollTop() < 500) {
            $(".dao_hang").removeClass("fixed_dh");
            $(".indexCate aside").css({display: "block"});
            $(".advertisement").css({display: "block"});
            $(".important").mouseleave(function() {
                $(".indexCate aside").css({display: "block"})
            })
        }
    });

    $('.fixed_position_1 ul li').click(function() {
        $('html,body').animate({
            scrollTop: $('.as').eq($(this).index()).offset().top - 100
        }, 500)
    });
    $(window.document).scroll(function() {
        for (var i = 0; i < $(".as").length; i++) {
            if ($(window).scrollTop() > $(".as").eq(i).offset().top - 300) {
                $(".fixed_position_1 ul li").eq(i).addClass("addcss").siblings(".fixed_position_1 ul li").removeClass("addcss")
            }
        }
    });

    $(window.document).scroll(function() {
        if ($(window).scrollTop() > 500) {
            $(".fixed_position_1").css({
                display: "block"
            })
        };
        if ($(window).scrollTop() < 500) {
            $(".fixed_position_1").css({
                display: "none"
            })
        }
    });


    $(".dog").mouseenter(function() {
        var dogs = $(this).attr("dg-floor");
        var dog = $(this).attr("dg-ct");
        $(".f-" + dogs + "-" + dog + "").show().siblings().hide()
    });
    $(".detailed_navigation ul li").mouseenter(function() {
        $(this).addClass("yadi").siblings().removeClass("yadi")
    });
    var i = 0
    var clone = $(".lunbobanner .lunboimg li").first().clone();
    $(".lunbobanner .lunboimg").append(clone);
    var size = $(".lunbobanner .lunboimg li").length;
    var t = setInterval(moveL, 5000);
    $(".kongzhianniu").hover(function() {
        clearInterval(t)
    }, function() {
        t = setInterval(moveL, 5000)
    });
    $(".btnr").click(function() {
        moveL()
    });
    function moveL() {
        i++
        if (i == size) {
            $(".lunboimg").css({
                left: 0
            });
            i = 1
        }
        $(".lunboimg").stop().animate({
            left: -i * 1200
        }, 500)
    }
    $(".btnl").click(function() {
        moveR()
    });
    function moveR() {
        i--
        if (i == -1) {
            $(".lunboimg").css({
                left: -(size - 1) * 1200
            });
            i = size - 2
        }
        $(".lunboimg").stop().animate({
            left: -i * 1200
        }, 500)
    }

    //加入购物车
    var offset = $(".toolbar-item-weixin").offset();
    $("body").on("click",".add_cart",function(event){  
        if(globalUserId==0){
            layer.alert("请先登录",{icon: 2});
            return false;
        }

        var addcar = $(this);
        var img = addcar.parent().parent().find('img').attr('src');
        var flyer = $('<img class="u-flyer" src="' + img + '">');
        var tops = $(window).scrollTop();

        $.post(addcar.attr("data-url"),{goodsID:addcar.attr("data-id")},function(res){
            if(res.code==1){
                $("#topCartNumber").html(res.body.number);
                $("#rightCartNumber").html(res.body.number);
                flyer.fly({
                    start: {
                        left: event.pageX,
                        top: event.pageY - tops,
                        width: 0,
                        height: 0
                    },
                    end: {
                        left: offset.left,
                        top: offset.top + 40,
                        width: 0,
                        height: 0
                    },
                })
            }else{
                layer.alert(res.desc,{icon: 2});
            }
        },'JSON')        
    })

    //加入收藏
    $("body").on("click",".add_fav",function(){   
        if(globalUserId==0){
            layer.alert("请先登录",{icon: 2});
            return false;
        }
        var o = $(this);
        $.post(o.attr("data-url"),{goodsID:o.attr("data-id")},function(res){
            if(res.code==1){
                layer.alert("收藏成功",{icon: 1});
            }else{
                layer.alert(res.desc,{icon: 2});
            }
        },'JSON')        
    })
})