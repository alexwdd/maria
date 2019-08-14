import Vue from 'vue';
import App from './App.vue';
import router from "./router";
import store from "./store";
import config from "./config";
import axios from './httpConfig/http.js'
import Vant from 'vant';
import 'vant/lib/index.css';
import './assets/fonts/iconfont.css';

Vue.use(Vant);
Vue.config.productionTip = false
Vue.prototype.config = config
Vue.prototype.$http = axios

//全局守卫
router.beforeEach((to, from, next) => {    
    const token = store.state.token ? store.state.token : window.sessionStorage.getItem('token');
    if (token) {
        next();
    } else {
        let url = window.location.href;
        let code = GetQueryString('code');
        let source = GetQueryString('source');
        if (code == '' || code == undefined) {
            window.location.href = 'https://open.weixin.qq.com/connect/oauth2/authorize?appid=' + config.APP_ID + '&redirect_uri=' + url + '&response_type=code&scope=snsapi_userinfo&state=STATE#wechat_redirect';  
        } else {
            let data = {
                code : code ,
                source : source,
            };
            axios.post("/login/index",data).then(result => {
                let res = result.data;        
                if (res.code == 1) {
                    store.commit("SET_TOKEN", res.body.token);
                    window.location.href = "/";
                    //this.$router.push({ path: this.redirect || '/' });
                }else{         
                    //alert(res.desc);
                    alert("授权失败");
                }
            });            
        }
    }
});

function GetQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg); 
    if (r != null)
        return unescape(r[2]);
    return "";
}





router.afterEach((to,from,next) => {
	window.scrollTo(0,0);
})

new Vue({
    data: {
		userinfo: {}
    },
    created: function () {
        /* const token = store.state.token ? store.state.token : window.localStorage.getItem('token');
        if(!token){     
            if (this.$route.query.code == '' || this.$route.query.code == undefined) {
                window.location.href = 'https://open.weixin.qq.com/connect/oauth2/authorize?appid=' + config.APP_ID + '&redirect_uri=http://vote.kf01.com&response_type=code&scope=snsapi_userinfo&state=STATE#wechat_redirect';  
            } else {
                this.$http.post("/login/index",{ code: this.$route.query.code }).then(result => {
                    let res = result.data;        
                    if (res.code == 1) {
                        this.$store.commit("SET_TOKEN", res.body.token);
                        this.$router.push({ path: this.redirect || '/' });      
                    }else{
                        this.$dialog.alert({title:'错误信息',message:res.desc});
                    }
                });
            }
        } */
    },
	router,
	store,
	render: h => h(App)
}).$mount('#app')