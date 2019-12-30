<template>
    <div class="container">
        <div class="tag_banner" :style="{backgroundImage:'url('+require('../assets/product/'+caketype.img)+')'}">
        </div>
        <h2 class="w-100 text-center">{{caketype.title}}</h2>
        <div class="gang"></div>
        <ul class="list-unstyled d-flex justify-content-start w91 mx-auto flex-wrap">
            <li v-for="(cake,i) of cakelist" :key="i" class="pro_list">
                <a href="">
                    <img :src="require('../assets/product'+cake.img)">
                    <h3>{{cake.title}}</h3>
                    <p class="m-0">{{cake.price}}</p>
                </a>
                <button v-for="(tag,index) of cake.tag.split(' ')" :key="index" class="my_button">{{tag}}＞</button>
                <!-- <button class="my_button">新品＞</button> -->
                <!-- <button class="my_button">新品＞</button> -->
                <a href="" class="d-block">
                    <i></i>
                    加入购物车
                </a>
                <div class="label"><img :src="cake.typeimg==''?'' : require('../assets/product/'+cake.typeimg)"></div>
            </li>
            <!-- <li class="pro_list">
                    <a href="">
                        <img src="https://static.21cake.com//upload/images/c6cfd43b2fd13cd6455fb79f9dfc8122.jpg" alt="" class="w-100">
                        <h3>下午茶套餐(双人分享装)</h3>
                        <p class="m-0">¥123.80/份</p>
                    </a>
                    <button class="my_button">新品＞</button>
                    <button class="my_button">吐司＞</button>
                    <a href="" class="d-block">
                        <i></i>
                        加入购物车
                    </a>
                    
            </li> -->
            <!-- <li class="pro_list">
                    <a href="">
                        <img src="https://static.21cake.com//upload/images/06523cdbd2cbd085aa357fc6efa7706e.jpg" alt="" class="w-100">
                        <h3>帕玛森芝士可颂（京沪杭满39元包邮）</h3>
                        <p class="m-0">¥18.00/50g(一份)</p>
                    </a>
                    <button class="my_button">儿童＞</button>
                    <button class="my_button">新品＞</button>
                    <button class="my_button">面包＞</button>
                    <a href="" class="d-block">
                        <i></i>
                        加入购物车
                    </a>
                    <div class="label"><img src="https://www.21cake.com/upload/images/1e22720bd656f7bac246159010c7e1f4.png" alt="" class="w-100"></div>
            </li> -->
            <!-- <li class="pro_list">
                    <a href="">
                        <img src="https://static.21cake.com//goods/145933696681.jpg" alt="" class="w-100">
                        <h3>中秋坚果芝士慕斯</h3>
                        <p class="m-0">¥268.00/454g(1.0磅)</p>
                    </a>
                    <button class="my_button">聚会＞</button>
                    <button class="my_button">新品＞</button>
                    <a href="" class="d-block">
                        <i></i>
                        加入购物车
                    </a>
                    <div class="label"><img src="https://www.21cake.com/upload/images/1e22720bd656f7bac246159010c7e1f4.png" alt="" class="w-100"></div>
            </li> -->
            <!-- <li class="pro_list">
                    <a href="">
                        <img src="https://static.21cake.com//upload/images/59954fac59f25d03564b474b1a10e385.jpg" alt="" class="w-100">
                        <h3>浅草</h3>
                        <p class="m-0">¥298.00/908g(2.0磅)</p>
                    </a>
                    <button class="my_button">新品＞</button>
                    <button class="my_button">人气＞</button>
                    <button class="my_button">生日＞</button>
                    <a href="" class="d-block">
                        <i></i>
                        加入购物车
                    </a>
                    <div class="label"><img src="https://www.21cake.com/upload/images/a1fb0b12fb9619098684d74904d7d45c.png" alt="" class="w-100"></div>
            </li> -->
            <!-- <li class="pro_list">
                    <a href="">
                        <img src="https://static.21cake.com//upload/images/1cc25b8c3296c4a8e7cc51b0a385e731.jpg" alt="" class="w-100">
                        <h3>清境</h3>
                        <p class="m-0">¥298.00/908g(2.0磅)</p>
                    </a>
                    <button class="my_button">新品＞</button>
                    <button class="my_button">聚会＞</button>
                    <button class="my_button">相识＞</button>
                    <a href="" class="d-block">
                        <i></i>
                        加入购物车
                    </a>
                    <div class="label"><img src="https://www.21cake.com/upload/images/1e22720bd656f7bac246159010c7e1f4.png" alt="" class="w-100"></div>
            </li> -->
            <!-- <li class="pro_list">
                    <a href="">
                        <img src="https://static.21cake.com//upload/images/7c8bb6800b5ff00ab44d7980585ead35.jpg" alt="" class="w-100">
                        <h3>黑白巧克力慕斯彼尔德（ＨＢＤ）</h3>
                        <p class="m-0">¥298.00/908g(2.0磅)</p>
                    </a>
                    <button class="my_button">设计师款＞</button>
                    <button class="my_button">新品＞</button>
                    <button class="my_button">万圣节＞</button>
                    <a href="" class="d-block">
                        <i></i>
                        加入购物车
                    </a>
                    <div class="label"><img src="https://www.21cake.com/upload/images/1e22720bd656f7bac246159010c7e1f4.png" alt="" class="w-100"></div>
            </li> -->
            <!-- <li class="pro_list">
                    <a href="">
                        <img src="https://static.21cake.com//upload/images/4f76e8a8c4bbfda06685bfd6b3ed1551.jpg" alt="" class="w-100">
                        <h3>黑白巧克力慕斯 彼尔德（亲亲）</h3>
                        <p class="m-0">¥298.00/908g(2.0磅)</p>
                    </a>
                    <button class="my_button">设计师款＞</button>
                    <button class="my_button">新品＞</button>
                    <button class="my_button">万圣节＞</button>
                    <a href="" class="d-block">
                        <i></i>
                        加入购物车
                    </a>
                    <div class="label"><img src="https://www.21cake.com/upload/images/1e22720bd656f7bac246159010c7e1f4.png" alt="" class="w-100"></div>
            </li> -->
            <!-- <li class="pro_list">
                    <a href="">
                        <img src="https://static.21cake.com//upload/images/0a4ec452eadba714c57ca808a9c80c17.png" alt="" class="w-100">
                        <h3> Jerry （新）杰瑞</h3>
                        <p class="m-0">¥298.00/908g(2.0磅)</p>
                    </a>
                    <button class="my_button">儿童＞</button>
                    <button class="my_button">聚会＞</button>
                    <button class="my_button">新品＞</button>
                    <a href="" class="d-block">
                        <i></i>
                        加入购物车
                    </a>
                    <div class="label"><img src="https://www.21cake.com/upload/images/1e22720bd656f7bac246159010c7e1f4.png" alt="" class="w-100"></div>
            </li> -->
            <!-- <li class="pro_list">
                    <a href="">
                        <img src="https://static.21cake.com//upload/images/49c01e7a633b0a2bf42912dcfe80d015.jpg" alt="" class="w-100">
                        <h3>可可岛</h3>
                        <p class="m-0">¥458.00/908g(2.0磅)</p>
                    </a>
                    <button class="my_button">聚会＞</button>
                    <button class="my_button">新品＞</button>
                    <a href="" class="d-block">
                        <i></i>
                        加入购物车
                    </a>
                    <div class="label"><img src="https://www.21cake.com/upload/images/1e22720bd656f7bac246159010c7e1f4.png" alt="" class="w-100"></div>
            </li> -->
            <!-- <li class="pro_list">
                    <a href="">
                        <img src="https://static.21cake.com//upload/images/f0e15c9a9bea261edd6dc0cf5bcfd3d8.jpg" alt="" class="w-100">
                        <h3>小重组（迷迭香套组）</h3>
                        <p class="m-0">¥298.00/160g(160g)</p>
                    </a>
                    <button class="my_button">情侣＞</button>
                    <button class="my_button">新品＞</button>
                    <button class="my_button">聚会＞</button>
                    <a href="" class="d-block">
                        <i></i>
                        加入购物车
                    </a>
            </li> -->
            <!-- <li class="pro_list">
                    <a href="">
                        <img src="https://static.21cake.com//upload/images/57f7193d068881468f95e4fb2d0f5552.jpg" alt="" class="w-100">
                        <h3>小重组（蓝莓套组）</h3>
                        <p class="m-0">¥298.00/160g(160g)</p>
                    </a>
                    <button class="my_button">情侣＞</button>
                    <button class="my_button">新品＞</button>
                    <button class="my_button">聚会＞</button>
                    <a href="" class="d-block">
                        <i></i>
                        加入购物车
                    </a>
            </li> -->
            <!-- <li class="pro_list">
                    <a href="">
                        <img src="https://static.21cake.com//upload/images/1ca819b1839d6632267a210e10a43e47.jpg" alt="" class="w-100">
                        <h3>小重组（树莓套组）</h3>
                        <p class="m-0">¥298.00/160g(160g)</p>
                    </a>
                    <button class="my_button">情侣＞</button>
                    <button class="my_button">聚会＞</button>
                    <button class="my_button">新品＞</button>
                    <a href="" class="d-block">
                        <i></i>
                        加入购物车
                    </a>
            </li> -->
            <!-- <li class="pro_list">
                    <a href="">
                        <img src="https://static.21cake.com//upload/images/6b8dd4e2c5bd0f908b224ba0abe46ad8.jpg" alt="" class="w-100">
                        <h3>松仁淡奶（木糖醇）</h3>
                        <p class="m-0">¥298.00/908g(2.0磅)</p>
                    </a>
                    <button class="my_button">长辈＞</button>
                    <button class="my_button">新品＞</button>
                    <a href="" class="d-block">
                        <i></i>
                        加入购物车
                    </a>
                    <div class="label"><img src="https://www.21cake.com/upload/images/1e22720bd656f7bac246159010c7e1f4.png" alt="" class="w-100"></div>
            </li> -->
            <!-- <li class="pro_list">
                    <a href="">
                        <img src="https://static.21cake.com//upload/images/505c71f60ac4b3d96744a6bb54d63cb1.jpg" alt="" class="w-100">
                        <h3>摩卡</h3>
                        <p class="m-0">¥398.00/908g(2.0磅)</p>
                    </a>
                    <button class="my_button">一人份＞</button>
                    <button class="my_button">新品＞</button>
                    <a href="" class="d-block">
                        <i></i>
                        加入购物车
                    </a>
            </li> -->
            <!-- <li class="pro_list">
                    <a href="">
                        <img src="https://static.21cake.com//upload/images/a447e5ccf956dcb889fe44674ebf214f.jpg" alt="" class="w-100">
                        <h3>枣儿</h3>
                        <p class="m-0">¥298.00/908g(2.0磅)</p>
                    </a>
                    <button class="my_button">新品＞</button>
                    <button class="my_button">生日＞</button>
                    <a href="" class="d-block">
                        <i></i>
                        加入购物车
                    </a>
                    <div class="label"><img src="https://www.21cake.com/upload/images/1e22720bd656f7bac246159010c7e1f4.png" alt="" class="w-100"></div>
            </li> -->
            <!-- <li class="pro_list">
                    <a href="">
                        <img src="https://static.21cake.com//upload/images/7e017fe2adf6d6b42fd18d9c06623de6.jpg" alt="" class="w-100">
                        <h3>芒果慕斯</h3>
                        <p class="m-0">¥298.00/908g(2.0磅)</p>
                    </a>
                    <button class="my_button">儿童＞</button>
                    <button class="my_button">聚会＞</button>
                    <button class="my_button">新品＞</button>
                    <a href="" class="d-block">
                        <i></i>
                        加入购物车
                    </a>
                    <div class="label"><img src="https://www.21cake.com/upload/images/1e22720bd656f7bac246159010c7e1f4.png" alt="" class="w-100"></div>
            </li> -->
            <!-- <li class="pro_list">
                    <a href="">
                        <img src="https://static.21cake.com//upload/images/327595e905e1fb3385478b4b6d2253fc.jpg" alt="" class="w-100">
                        <h3>新卡</h3>
                        <p class="m-0">¥398.00/908g(2.0磅)</p>
                    </a>
                    <button class="my_button">一人份＞</button>
                    <button class="my_button">新品＞</button>
                    <a href="" class="d-block">
                        <i></i>
                        加入购物车
                    </a>
            </li> -->
            <!-- <li class="pro_list">
                    <a href="">
                        <img src="https://static.21cake.com//upload/images/bd98be4be1de2edd23694874b3352fd0.jpg" alt="" class="w-100">
                        <h3>彼尔德（Party）黑白巧克力慕斯</h3>
                        <p class="m-0">¥298.00/908g(2.0磅)</p>
                    </a>
                    <button class="my_button">儿童＞</button>
                    <button class="my_button">新品＞</button>
                    <button class="my_button">相识＞</button>
                    <a href="" class="d-block">
                        <i></i>
                        加入购物车
                    </a>
            </li> -->
            <!-- <li class="pro_list">
                    <a href="">
                        <img src="https://static.21cake.com//upload/images/e200e94fa39c83fa4337e21a0ee7b72a.jpg" alt="" class="w-100">
                        <h3>百香果酸乳酪慕斯（木糖醇）</h3>
                        <p class="m-0">¥298.00/908g(2.0磅)</p>
                    </a>
                    <button class="my_button">情侣＞</button>
                    <button class="my_button">低温＞</button>
                    <button class="my_button">新品＞</button>
                    <a href="" class="d-block">
                        <i></i>
                        加入购物车
                    </a>
                    <div class="label"><img src="https://www.21cake.com/upload/images/1e22720bd656f7bac246159010c7e1f4.png" alt="" class="w-100"></div>
            </li> -->
            <!-- <li class="pro_list">
                    <a href="">
                        <img src="https://static.21cake.com//upload/images/f0b8c71b2fba5ab2a5773595a1c13e32.jpg" alt="" class="w-100">
                        <h3>深艾尔</h3>
                        <p class="m-0">¥268.00/454g(1.0磅)</p>
                    </a>
                    <button class="my_button">情侣＞</button>
                    <button class="my_button">低温＞</button>
                    <button class="my_button">新品＞</button>
                    <a href="" class="d-block">
                        <i></i>
                        加入购物车
                    </a>
                    <div class="label"><img src="https://www.21cake.com/upload/images/1e22720bd656f7bac246159010c7e1f4.png" alt="" class="w-100"></div>
            </li> -->
            <!-- <li class="pro_list">
                    <a href="">
                        <img src="https://static.21cake.com//upload/images/31ad1048931a2871f920a4a69c628fa1.jpg" alt="" class="w-100">
                        <h3>彼尔德（生日）黑白巧克力慕斯</h3>
                        <p class="m-0">¥298.00/908g(2.0磅)</p>
                    </a>
                    <button class="my_button">新品＞</button>
                    <button class="my_button">生日＞</button>
                    <a href="" class="d-block">
                        <i></i>
                        加入购物车
                    </a>
            </li> -->
            <!-- <li class="pro_list">
                    <a href="">
                        <img src="https://static.21cake.com//upload/images/b1a6e87bcf1cb033f7a77d6e44ade49d.jpg" alt="" class="w-100">
                        <h3>6口味切块</h3>
                        <p class="m-0">¥198.00/440g(6个(6种口味))</p>
                    </a>
                    <button class="my_button">聚会＞</button>
                    <button class="my_button">新品＞</button>
                    <button class="my_button">人气＞</button>
                    <a href="" class="d-block">
                        <i></i>
                        加入购物车
                    </a>
            </li> -->
        </ul>
    </div>
</template>
<script>
export default {
    name:"activity",
    created() {
        this.axios.get("/product/type",{params:{tid:this.$route.params.hid}})
        .then(res=>{
            this.caketype= res.data[0];
        });
        this.axios.get("/product/list",{params:{ptype:this.$route.params.hid}})
        .then(res=>{
            this.cakelist= res.data;
        })
    },
    data() {
        return {
            caketype:{title:"新品",img:"xp.jpg"},
            cakelist:[
                {pid:1,img:"/0/1_0.jpg",title:"米道",price:"¥298.00/454g(1.0磅)",tag:"儿童 生日 人气",typeimg:""},
            ]
            
        }
    },
}
</script>
<style scoped>
.tag_banner{
    height: 400px;
    /* background-image: url("https://www.21cake.com/upload/images/d780ab3fa81645c6f03089dcce9fd47b.jpg"); */
    background-position: center center;
}
.container h2{
    font-size: 24px;
    color:#684029;
    margin: 50px 0px;
}
.gang{
    width: 28px;height: 2px;
    background: #E6C5B8;
    margin: -42px auto 50px;
}
.w91{
    width: 91%;
}
.pro_list>a>h3,.pro_list>a>p{
    font-size: 13px;
}
.pro_list>a:hover,.pro_list>a>p{
    color: #bb9772;
}
.pro_list{
    width: 228px;
    text-align: center;
    margin: 0px 34px;
    position: relative;
}
.pro_list i{
    width: 28px;
    height: 28px;
    background: url("../assets/img/icon.png") no-repeat;
    background-position: -216px -40px;
    background-size: 310px 120px;
    display: inline-block;
    margin-right: 2px;
    vertical-align: middle;
}
.pro_list a.d-block:hover i{
    background-position: -250px -72px;
}
.label{
    width: 65px;height: 23px;
    position: absolute;
    left: 0;top: 15px;
}
</style>