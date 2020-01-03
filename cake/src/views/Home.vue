<template>
    <div class="container m-0">
        <!-- 公告 -->
        <div class="cart-box">
            <img src="https://www.21cake.com/themes/site/img/notic.png" alt="">
            <span>卜壳面包，不添加的味道，马上品尝</span>
            <a href="">点击查看>></a>
        </div>
        <!-- 轮播图 -->
        <div id="slider" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#slider" data-slide-to="0" class="active"></li>
                <li data-target="#slider" data-slide-to="1" class=""></li>
                <li data-target="#slider" data-slide-to="2"></li>
                <li data-target="#slider" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <a href=""><img src="../assets/img/index_carousel/0.jpg"></a>
                </div>
                <div class="carousel-item">
                    <a href=""><img src="../assets/img/index_carousel/1.jpg"></a>
                </div>
                <div class="carousel-item">
                    <a href=""><img src="../assets/img/index_carousel/2.jpg"></a>
                </div>
                <div class="carousel-item">
                    <a href=""><img src="../assets/img/index_carousel/3.jpg"></a>
                </div>
            </div>
        </div>
        <!-- 专题导航 -->
        <div class="home_menu">
            <a v-for="(item,i) of menuimg" :key="i" :href="'#'+(i+1)"><img :src="require(`../assets/home/homeMenu/${item.img}`)" :alt="item.name" :title="item.name"></a>
            <!-- <a href="#2"><img src="https://static.21cake.com/upload/images/9d85677ea56806bff908c431f7c764f7.jpg" alt="生日" title="生日"></a>
            <a href="#3"><img src="https://static.21cake.com/upload/images/43a4c974312a2be97a1d0d6616c3ab23.jpg" alt="儿童" title="儿童"></a>
            <a href="#4"><img src="https://static.21cake.com/upload/images/9e3f7fdd852d1b35f318076e3575412c.jpg" alt="聚会" title="聚会"></a>
            <a href="#4"><img src="https://static.21cake.com/upload/images/37752f6805d166b02e011c3b5c3b4972.png" alt="活动专区" title="活动专区"></a> -->
        </div>
        <!-- 新品专区 -->
        <div v-for="(type,i) of hometype" :key="i" class="home_module" :id="i+1">
            <h4>{{type.hname}} <span>/ 专区</span></h4>
            <div><router-link target="_blank" :to="'/activity/'+type.hid"><img :src="require(`../assets/home/type/${type.himg}`)" alt=""></router-link></div>
            <div class="home_list">
                <div v-for="(item,index) of type.products.split(';')" :key="index" class="list_item">
                    <routerLink target="_blank" :to="'/cakeDetail/'+item.split(',')[0]"><img :src="require(`../assets/product${item.split(',')[5]}`)" alt=""><h6>{{item.split(',')[1]}}</h6></routerLink>
                    <a href=""><p class="text-truncate">{{item.split(',')[2]}}</p>
                    </a>
                    <button v-for="(tag,k) of item.split(',')[3].split(' ')" :key="k">{{tag}}＞</button>
                    <!-- <button>生日＞</button>
                    <button>人气＞</button> -->
                    <div class="cart_info">
                        <span>{{item.split(',')[4]}}</span>
                        <button>加入购物车</button>
                    </div>
                </div>
                <!-- <div class="list_item">
                        <a href=""><img src="https://static.21cake.com//upload/images/5f1937d08ee35760122edf8efe2f99e9.png" alt=""><h6>中秋坚果慕斯</h6></a>
                        <a href=""><p class="text-truncate">月光如果可以凝固，一定是芝士慕斯的味道</p>
                        </a>
                        <button>聚会＞</button>
                        <button>新品＞</button>
                        <div class="cart_info">
                            <span>¥268.00/454g(1.0磅)</span>
                            <button>加入购物车</button>
                        </div>
                </div>
                <div class="list_item">
                        <a href=""><img src="https://static.21cake.com//upload/images/9d34bf2fc7efe65d766b8cd53c7d5cd2.png" alt=""><h6>（新）杰瑞</h6></a>
                        <a href=""><p class="text-truncate">谁动了我的奶酪</p>
                        </a>
                        <button>儿童＞</button>
                        <button>聚会＞</button>
                        <button>新品＞</button>
                        <div class="cart_info">
                            <span>¥298.00/908g(2.0磅)</span>
                            <button>加入购物车</button>
                        </div>
                </div>
                <div class="list_item">
                        <a href=""><img src="https://static.21cake.com//upload/images/c8b92112c6d4bbd0d7e872369a41c7ca.png" alt=""><h6>浅草</h6></a>
                        <a href=""><p class="text-truncate">浅草才能没马蹄</p>
                        </a>
                        <button>新品＞</button>
                        <button>人气＞</button>
                        <button>生日＞</button>
                        <button>相识＞</button>
                        <div class="cart_info">
                            <span>¥298.00/908g(2.0磅)</span>
                            <button>加入购物车</button>
                        </div>
                </div> -->
            </div>
        </div>
        <!-- 生日专区 -->
        <!-- <div class="home_module" id="2">
                <h4>生日 <span>/ 专区</span></h4>
                <div><a href=""><img src="https://static.21cake.com//upload/images/84f0375298ea7fe876ae1447c2911400.jpg" alt=""></a></div>
                <div class="home_list">
                    <div class="list_item">
                        <a href=""><img src="https://static.21cake.com//upload/images/2bd6022d079dafb61d084658bded8e77.png" alt=""><h6>百利甜情人</h6></a>
                        <a href=""><p class="text-truncate">新切的水果与刚折的玫瑰，甜美、渐浓</p>
                        </a>
                        <button>情侣＞</button>
                        <button>人气＞</button>
                        <button>生日＞</button>
                        <button>结婚＞</button>
                        <div class="cart_info">
                            <span>¥298.00/908g(2.0磅)</span>
                            <button>加入购物车</button>
                        </div>
                    </div>
                    <div class="list_item">
                            <a href=""><img src="https://static.21cake.com//upload/images/236e37ff4694ae6d5c94afddddbaad91.png" alt=""><h6>榴莲飘飘</h6></a>
                            <a href=""><p class="text-truncate">丰厚乳脂奶油，打入足量榴莲果肉</p>
                            </a>
                            <button>人气＞</button>
                            <button>生日＞</button>
                            <div class="cart_info">
                                <span>¥298.00/908g(2.0磅)</span>
                                <button>加入购物车</button>
                            </div>
                    </div>
                    <div class="list_item">
                            <a href=""><img src="https://static.21cake.com//upload/images/85c3ec51f9ac1c0a2b7a9a4cceafc61d.png" alt=""><h6>黑白巧克力慕斯 彼尔德（HBD）</h6></a>
                            <a href=""><p class="text-truncate">卡通定制撒粉，简单、柔软</p>
                            </a>
                            <button>设计师款＞</button>
                            <button>新品＞</button>
                            <div class="cart_info">
                                <span>¥298.00/908g(2.0磅)</span>
                                <button>加入购物车</button>
                            </div>
                    </div>
                    <div class="list_item">
                            <a href=""><img src="https://static.21cake.com//upload/images/523259029cb1ff789d9b0beacf51b315.png" alt=""><h6>枣儿</h6></a>
                            <a href=""><p class="text-truncate">红枣奶油戚风，与姜撞奶慕斯</p>
                            </a>
                            <button>新品＞</button>
                            <button>生日＞</button>
                            <div class="cart_info">
                                <span>¥298.00/908g(2.0磅)</span>
                                <button>加入购物车</button>
                            </div>
                    </div>
                </div>
        </div> -->
        <!-- 儿童专区 -->
        <!-- <div class="home_module" id="3">
            <h4>儿童 <span>/ 专区</span></h4>
            <div><a href=""><img src="https://static.21cake.com//upload/images/a85037c288546b3c691192dfad2bb16a.jpg" alt=""></a></div>
            <div class="home_list">
                <div class="list_item">
                    <a href=""><img src="https://static.21cake.com//upload/images/89803ef2e60bade042e32a0e599321c4.png" alt=""><h6>黑白巧克力慕斯 彼尔德（Party）</h6></a>
                    <a href=""><p class="text-truncate">“孩子的世界，简单到非黑即白”</p>
                    </a>
                    <button>儿童＞</button>
                    <button>新品＞</button>
                    <button>相识＞</button>
                    <div class="cart_info">
                        <span>¥298.00/908g(2.0磅)</span>
                        <button>加入购物车</button>
                    </div>
                </div>
                <div class="list_item">
                        <a href=""><img src="https://static.21cake.com//upload/images/404f4d71290c67e519e52cd9a93c8d44.png" alt=""><h6>米道</h6></a>
                        <a href=""><p class="text-truncate">一款专为孩子设计的蛋糕</p>
                        </a>
                        <button>儿童＞</button>
                        <button>生日＞</button>
                        <button>人气＞</button>
                        <div class="cart_info">
                            <span>¥298.00/454g(1.0磅)</span>
                            <button>加入购物车</button>
                        </div>
                </div>
                <div class="list_item">
                        <a href=""><img src="https://static.21cake.com//upload/images/6bc820b91c8438eafcad8b0a0936ee73.png" alt=""><h6>芒果奶油蛋糕</h6></a>
                        <a href=""><p class="text-truncate">21cake配方芒果百香果慕斯夹心</p>
                        </a>
                        <button>情侣＞</button>
                        <button>儿童＞</button>
                        <button>聚会＞</button>
                        <button>人气＞</button>
                        <div class="cart_info">
                            <span>¥198.00/908g(2.0磅)</span>
                            <button>加入购物车</button>
                        </div>
                </div>
                <div class="list_item">
                        <a href=""><img src="https://static.21cake.com//upload/images/dfe6f2c320b07c64fbff7c43973ffe38.png" alt=""><h6>百香果酸乳酪慕斯（木糖醇）</h6></a>
                        <a href=""><p class="text-truncate">冰淇淋口感，不同层次的酸与冰凉</p>
                        </a>
                        <button>情侣＞</button>
                        <button>低温＞</button>
                        <button>新品＞</button>
                        <button>儿童＞</button>
                        <div class="cart_info">
                            <span>¥298.00/908g(2.0磅)</span>
                            <button>加入购物车</button>
                        </div>
                </div>
            </div>
        </div> -->
        <!-- 聚会专区 -->
        <!-- <div class="home_module" id="4">
            <h4>聚会 <span>/ 专区</span></h4>
            <div><a href=""><img src="https://static.21cake.com//upload/images/4f5fdcf4d2b26b0400372f90b8fac191.jpg" alt=""></a></div>
            <div class="home_list">
                <div class="list_item">
                    <a href=""><img src="https://static.21cake.com//upload/images/5d08d69d9cf2cc02deb76db701efa10b.png" alt=""><h6>6口味切块</h6></a>
                    <a href=""><p class="text-truncate">多口味，精装小份</p>
                    </a>
                    <button>聚会＞</button>
                    <button>新品＞</button>
                    <button>人气＞</button>
                    <div class="cart_info">
                        <span>¥198.00/440g(6个(6种口味))</span>
                        <button>加入购物车</button>
                    </div>
                </div>
                <div class="list_item">
                        <a href=""><img src="https://static.21cake.com//upload/images/f06e749d64c650827a7121dd0dad4355.png" alt=""><h6>黑白巧克力慕斯</h6></a>
                        <a href=""><p class="text-truncate">白巧克力慕斯的甜，与黑巧克力酱的苦</p>
                        </a>
                        <button>聚会＞</button>
                        <button>生日＞</button>
                        <button>人气＞</button>
                        <div class="cart_info">
                            <span>¥298.00/908g(2.0磅)</span>
                            <button>加入购物车</button>
                        </div>
                </div>
                <div class="list_item">
                        <a href=""><img src="https://static.21cake.com//upload/images/675e4320415f48a73bfaf446c8c3cb3c.png" alt=""><h6>朗姆芝士</h6></a>
                        <a href=""><p class="text-truncate">清香柠檬与乳酪夹心，微苦、微醺</p>
                        </a>
                        <button>情侣＞</button>
                        <button>生日＞</button>
                        <div class="cart_info">
                            <span>¥298.00/908g(2.0磅)</span>
                            <button>加入购物车</button>
                        </div>
                </div>
                <div class="list_item">
                        <a href=""><img src="https://static.21cake.com//upload/images/f3b57b18e54f65a5c015a196d2e993cf.png" alt=""><h6>冻慕斯与焗芝士</h6></a>
                        <a href=""><p class="text-truncate">马斯卡彭慕斯，叠加法国软芝士</p>
                        </a>
                        <button>情侣＞</button>
                        <button>低温＞</button>
                        <button>生日＞</button>
                        <div class="cart_info">
                            <span>¥298.00/908g(2.0磅)</span>
                            <button>加入购物车</button>
                        </div>
                </div>
            </div>
        </div> -->
        <!-- 新客专享 -->
        <div class="home_module" id="5">
            <h4>活动门 <span>/ 是被吸引了吧</span></h4>
            <div><a href=""><img src="https://static.21cake.com//upload/images/810af7fb1f079477c8aec960d11fa4df.jpg" alt="" class="img5 mt-1"></a></div>
        </div>
        <!-- 廿一客文章 -->
        <div class="home_module" id="6">
            <h4>廿一客 <span>/ 文章</span></h4>
            <div class="d-flex justify-content-around w1116">
                <a href="" class="img5 mt-1">
                    <img src="https://static.21cake.com/public/images/0a/2c/db/520577a6cd05e8ff8fe54ac95b291ceb.jpg" alt="">
                    <h4>冬季刊·进博会</h4>
                    <p>阅读全文 &gt;&gt;</p>
                </a>
                <a href="" class="img5 mt-1">
                        <img src="https://static.21cake.com/public/images/13/17/51/dea6a02ac712f5fc042a93d5cfe2c24a.jpg" alt="">
                        <h4>廿一志秋刊·客服Q&amp;A</h4>
                        <p>阅读全文 &gt;&gt;</p>
                </a>
            </div>
        </div>
    </div></template>

<script>
// @ is an alias to /src

export default {
  name: 'home',
  created() {
    this.axios.get("/home/info")
    .then((res)=>{
        this.hometype=res.data;
    });
  },
  data() {
      return {
          menuimg:[{img:"1.jpg",name:"新品"},{img:"2.jpg",name:"生日"},{img:"3.jpg",name:"儿童"},{img:"4.jpg",name:"聚会"},{img:"5.png",name:"活动专区"},],
          hometype:[]
          
      }
  },
}
</script>
<style scoped>
.container{min-width: 1200px;}
.cart-box{
    width: 100%;height: 40px;
    min-width: 1300px;
    float: left;
    line-height: 40px;
    position: absolute;
    top: 0;left: 50px;
    z-index: 1;
    font-size:13px;
    color:#684029;
    background: rgba(213,191,167,0.15);
}
.cart-box img{
    height: 20px;width: 33px;
    margin: -2px 5px 0px 0px;
}
.cart-box a{
    margin-left: 5px;
    color: #D5BFA7;
    font-size: 13px;
}
.carousel,.carousel-inner{
    height: 480px;
}
.carousel-item img{
    width: 100%;
    /* margin-top: -260px; */
    /* margin-left: -350px; */
}
.carousel-indicators li {
    width: 10px;height: 10px;
    border-radius: 50%;
    margin: 0px 5px;
    background: #fff;
}
.carousel-indicators .active {
    background: #684029;
}
.home_menu{
    width: 100%;
    margin: 26px auto 0px auto;
    display: flex;
    justify-content: space-around;
}
.home_menu a{
    display: block;
    width: 200px;height: 100px;
    border-radius: 8px;
    box-shadow: 0 2px 6px 0 rgba(0,0,0,0.06);
}
.home_module{
    width: 90%;
    margin: 55px auto;
}
.home_module h4{
    font-size: 26px;
    color: #724228;
    margin-bottom: 25px;
}
.home_module h4>span{
    font-size: 14px;
    color: #8E5D43;
}
.home_list{
    display: flex;
    justify-content: space-between;
    margin-top: 20px;
}
.list_item{
    width: 265px;
}
.list_item h6,.list_item>a:hover{
    color: #000;
    margin-top: 10px;
}
.list_item p,.list_item>a~a:hover{
    font-size: 14px;
    color: #616161;
    margin: 0;
}
.list_item button{
    border: 1px solid #D5BFA7;
    border-radius: 100px;
    padding: 0 6px 0 8px;
    color: #D5BFA7;
    margin: 8px 3px;
    font-size: 12px;
}
.list_item img{background: #fafafa;}
.cart_info{
    width: 100%;
    height: 37px;
    margin-top: 6px;
    border-top: 1px dashed #D5BFA7;
    color: #BB9772;
    font-size: 14px;
    position: relative;
}
.cart_info>span{
    position: absolute;
    left: 0;bottom: 4px;
}
.cart_info>button{
    width: 80px;height: 24px;
    position: absolute;
    bottom: 0.1rem;right: 0;
    background: #643e28;
    color: #fff;
    border-radius: 0;
    margin: 0;
    border: 0;
}
.img5{
    width: 542px;
    border-radius: 8px;
    box-shadow: 0 0 6px 0 rgba(0,0,0,0.10);
    display: block;
}
.img5 img{
    width: 100%;
    border-top-left-radius: 8px;
    border-top-right-radius: 8px;
}
.img5 h4{
    margin-top: 14px;
    padding: 0px 16px;
    margin-bottom: 0px;
}
.img5 p,.img5 p:hover{
    margin-bottom: 20px;
    padding: 0px 16px;
    text-align: end;
    color: #ad814b;
}
.w1116{
    width: 1116px;
}
</style>
