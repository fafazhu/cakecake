<template>
    <div class="header_nav">
        <a href="" class="fl header_logo"><img src="../assets/img/logo.png" class="w-100"></a>
        <ul class="fl nav_box">
            <li><a href="/">首页</a></li>
            <li><a href="#">蛋糕</a></li>
            <li><a href="#">面包</a></li>
            <li><a href="#">冰淇淋</a></li>
            <li><a href="#">咖啡下午茶</a></li>
            <li><a href="#">全国送</a></li>
            <li><a href="#">企业专区</a></li>
        </ul>
        <div class="fr d-flex">
            <div class="dropdown mr20px">
                <a href="">APP下载</a>
                <ul class="dropdown-menu text-center p-3">
                    <li><img src="../assets/img/footer-erweima.png" class="w-100"></li>
                    <li class="font_coffe12">下载享更多优惠</li>
                </ul>
            </div>
            <select name="cities" class="cities">
                <option value="sz">深圳</option>
                <option value="sh">上海</option>
                <option value="bj">北京</option>
                <option value="tj">天津</option>
                <option value="hz">杭州</option>
                <option value="wx">无锡</option>
                <option value="suz">苏州</option>
                <option value="gz">广州</option>
            </select>
            <!-- <div class="dropdown mx-3">
                <a href="">深圳</a>
                <ul class="dropdown-menu fl text-center p-3">
                    <li><a href="">上海</a></li>
                    <li><a href="">北京</a></li>
                    <li><a href="">天津</a></li>
                    <li><a href="">杭州</a></li>
                    <li><a href="">无锡</a></li>
                    <li><a href="">苏州</a></li>
                    <li><a href="">广州</a></li>
                </ul>
            </div> -->
            <div class="dropdown mx-3">
                <a href="">消息</a>
                <ul class="dropdown-menu fl text-center p-3">
                    <li><a href="">通知</a></li>
                    <li><a href="">物流</a></li>
                </ul>
            </div>
            <span v-if="uname==''" class="h80px"><a href="/login">登录</a>/ <a href="/reg">注册</a></span>
            <a v-else class="h80px">欢迎{{uname}} 
            <el-button type="info" size="mini" plain @click="logout">退出登录</el-button>    
            </a>
             
                <a href="/cart" class="h80px ml-4"><img src="../assets/img/shop_car.png" class=""></a>
            <el-badge :value="totalcount" class="item" type="warning" v-show="totalcount>0">
            </el-badge>
        </div>
    </div>
</template>
<script>
import {mapState,mapMutations} from "vuex"
export default {
    computed: {
        ...mapState(["uname"]),
        ...mapState(["totalcount"])
    },
    methods: {
        logout(){
            this.setUname("");
            localStorage.clear();
            sessionStorage.clear();
        },
        ...mapMutations(["setUname"])
    },
    data() {
        return {
        }
    },
    
}
</script>
<style scoped>
body{background: transparent;}
.header_nav{
    margin: 0 auto;
    min-width: 754px;
    
    width: 100%; height: 80px;
    padding-left: 50px;
    padding-right: 50px;
    background: #fff;
    position: fixed;
    z-index: 2;
    top: 0;
    box-shadow:0px 2px 2px 0px rgba(195, 195, 195, 0.5);
}
.header_nav a:hover{
    color: #d5bfa7;
    text-decoration: none;
}
.header_logo{
    height: 44px;width: 120px;
    margin-top: 18px;
}
.nav_box{
    display: flex;
    list-style: none;
    margin-left:30px;
    height: 80px;
    line-height: 80px;
}
.nav_box li{margin-left: 15px;margin-right: 15px;}
.dropdown:hover .dropdown-menu{display: block;}
.dropdown-menu{width: 100px;}
.dropdown>a{height: 80px;line-height: 80px;}
.mr20px{margin-right: 20px;}
.h80px{height: 80px;line-height: 80px;}
.cities{
    border:0;
    color: inherit;
    background: inherit;
}
.item{position: absolute;right: 40px; top: 25px;}

</style>