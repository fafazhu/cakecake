<template>
    <div class="container">
        <div class="img-banner">
            <div><img :src="require('../assets/product/'+image)" alt="">
            </div>
            <div class="right_list">
                <ul>
                    <li v-for="(img,i) of imageList" :key="i"><img :src="require('../assets/product/'+img)" alt="" @mouseover="changeimg" :data-img="img"></li>
                    <!-- <li><img src="https://static.21cake.com/upload/images/fa8bfbbec0c9d976f0b3b2eea0f9ab6a.jpg" alt=""></li> -->
                    <!-- <li><img src="https://static.21cake.com/upload/images/21dc607d2b2e76edd9873ddf5a2bf12a.jpg" alt=""></li> -->
                    <!-- <li><img src="https://static.21cake.com/upload/images/a29517eb12bb2ed0e49b542e1a428513.jpg" alt=""></li> -->
                </ul>
            </div>
        </div>
        <div class="content_box">
            <div class="left_content">
                <h1>Rice Cake [米道]</h1>
                <p>一款专门为儿童设计，以天然植物为基础的蛋糕，非高脂、非高糖。</p>
                <a href="" class="my_button">儿童＞</a>
                <a href="" class="my_button">生日＞</a>
                <a href="" class="my_button">人气＞</a>
                <a href="" class="my_button">万圣节＞</a>
                <div>
                    <img src="https://static.21cake.com/upload/images/20180424/0e3e98e8360f7ac3ef28a411dd0fabd9.png" alt=""><span>五常大米</span>
                    <img src="https://static.21cake.com/themes/site/img/goods/icon/pcicon-24.png" alt=""><span>鹰嘴豆</span>
                    <img src="https://static.21cake.com/themes/site/img/goods/icon/pcicon-36.png" alt=""><span>综合水果果酱</span> 
                </div>
                <div>
                    <p>天真、天然 <br> 是我们做这款蛋糕唯一的出发点</p>
                    <p><i></i>保鲜条件：0-4℃保藏12小时，4℃食用为佳</p>
                    <p><i></i>参考甜度：<i></i><i></i><i></i><i></i><i></i></p>
                </div>
            </div>
            <div class="right_content">
                <div>
                    <p><img src="https://static.21cake.com//upload/images/20190604/cabe0b039c7a43ecef9afa785bc14ed2.jpg" alt="">¥<span> 298.00</span>/454g(1.0磅)</p>
                </div>
                <ul>
                    <li><i></i>约13cmx13cm</li>
                    <li><i></i>适合3-4人分享</li>
                    <li><i></i>含5套餐具（蜡烛需单独订购）</li>
                    <li><i></i>最早明天 10:00配送</li>
                </ul>
                <div v-for="(item,i) of spec" :key="i" class="space">
                    <span>{{item.name}}</span>
                    <routerLink v-for="(specs,index) of item.items" :key="index" :to="'/cakeDetail/'+selPid" :class="{active:psid[i]==specs.sid}" @click="select(i,index)">
                        <i></i>
                        {{specs.name}}
                    </routerLink>
                    <!-- <a href="javascript:;">
                        <i></i>
                        芒果撒粉
                    </a> -->
                </div>
                <!-- <div class="space">
                    <span>商品规格</span>
                    <a href="javascript:;" class="active">
                        <i></i>
                        454g(1.0磅)
                    </a>
                    <a href="javascript:;">
                        <i></i>
                        908g(2.0磅)
                    </a>
                </div> -->
                <a href="javascript:;" class="bt_bg_grey mr-2">立即购买</a>
                <a href="javascript:;" class="bt_bg_brow ml-2">加入购物车</a>
            </div>
        </div>
        <div>
            <img v-for="(img,i) of detailImg" :key="i" :src="require('../assets/product/'+img)" alt="">
            <!-- <img src="https://static.21cake.com/public/images/11/00/85/92caea4f427748bf095b9828b2e7dc29.jpg?1559642295#h" alt=""> -->
            <!-- <img src="https://static.21cake.com/public/images/d2/28/d0/a617e171778e01b0e38deb0d88e16b41.jpg?1559642303#w" alt=""> -->
            <!-- <img src="https://static.21cake.com/public/images/dd/5f/17/3c8f95ed2eba815009de0a4bd01b668f.jpg?1559642311#h" alt=""> -->
            <!-- <img src="https://static.21cake.com/public/images/2d/03/6a/747f306564a564e167480b1aa4ef3d1a.jpg?1568877372#h" alt=""> -->
            <!-- <img src="https://static.21cake.com/public/images/4a/80/d6/58d0b1fdb1f78d365356815cdbb28d3f.jpg?1560221794#h" alt=""> -->
            <!-- <img src="https://static.21cake.com/public/images/a6/52/98/f9a19c913f89d7f8e3e853ada99d543a.jpg?1559642336#h" alt=""> -->
            <!-- <img src="https://static.21cake.com/public/images/7d/8e/ce/8fbc8f9f63fa05be9d7b6c373572f677.jpg?1559642346#h" alt=""> -->
            <!-- <img src="https://static.21cake.com/public/images/a8/e9/d0/789ae71ac86ac126d6069f15d882f8d5.png?1559785556#w" alt=""> -->
        </div>
    </div>
</template>
<script>
import { threadId } from 'worker_threads';
export default {
    created() {
        for(var i=0;i<this.product.length;i++){
            if(this.product[i].pid==this.$route.params.pid){
                this.psid=this.product[i].sid.split(",");
                console.log(this.psid);
            }
        }
    },
    data() {
        return {
            image:"0/1.jpg",
            imageList:["0/1.jpg","0/2.jpg","0/3.jpg","0/4.jpg"],
            detailImg:["0/5.jpg","0/6.jpg","0/7.jpg","0/8.jpg","0/9.jpg","0/10.jpg","0/11.jpg","0/12.jpg","0/13.png"],
            tu:[],
            spec:[
                {name:"撒粉图案",
                items:[{sid:1,name:"可可撒粉"},{sid:2,name:"芒果撒粉"}]},
                {name:"商品规格",
                items:[{sid:1,name:"454g(1.0磅)"},{sid:2,name:"908g(2.0磅)"}]}
            ],
            product:[
                {pid:1,sid:"1,1"},
                {pid:2,sid:"1,2"},
                {pid:3,sid:"2,1"},
                {pid:4,sid:"2,2"},
            ],
            sel:[],
            psid:[],
            selPid:"1"
        }
    },
    methods: {
        changeimg(e){
            this.image=e.target.dataset.img;
        },
        select(i,index){
            this.sel[i]=index;
            for(var i=0;i<this.product.length;i++){
                if(this.sel==this.product[i].sid){
                    this.selPid=this.product[i].pid
                    console.log(this.selPid);
                }
            }
        }
    },
    
}
</script>
<style scoped>
.img-banner,.content_box{
    width: 78%;
    display: flex;
    margin: 10px auto;
}
.content_box{margin-top: 20px;}
.img-banner>div:first-child{width: 88%;}
.img-banner>div:last-child{width: 12%;}
.right_list{position: relative;}
.right_list ul{
    position: absolute;
    bottom: 0;
    margin-left: 40px;
    margin-bottom: 0;
}
.right_list li{
    margin-top: 20px;
}
.right_list li:hover{
    border: 1px solid #c69c6d;
    cursor: pointer;
}
.left_content{width: 50%;}
.left_content>h1{font-size: 20px;margin: 0;}
.left_content p,span{font-size: 12px;margin: 0;}
.left_content p{line-height: 24px;}
.left_content>p:nth-child(2){
    color: #ff3933;
    margin-bottom: 20px;
}
.left_content>div{
    margin-top: 14px;
    margin-bottom: 14px;
}
.left_content img{width: 50px;height: 50px;}
i{
    display: inline-block;
    background-image: url("../assets/img/icon.png");
    width: 20px;height: 20px;;
    background-position: 361px -1px;
    background-size: 1200% auto;
    margin:0px 10px;
    vertical-align: middle;
}
.left_content>div>p:last-child i{
    background: url("https://static.21cake.com/themes/site/img/sweet_02.png") no-repeat;
    background-size: 100%;
}
.left_content>div>p:last-child i:first-child{
    background: url("https://static.21cake.com/themes/site/img/sweet.png") no-repeat;
    background-size: 100%;
    margin: 0 7px;
}
.left_content>div>p:last-child i:last-child,
.left_content>div>p:last-child i:nth-child(5)
{
    background: url("https://static.21cake.com/themes/site/img/sweet_01.png") no-repeat;
    background-size: 100%;
    margin: 0 7px;
}
.left_content>div:last-child p~p{
    line-height: 34px;
}
.left_content>div:last-child>p:nth-child(2){
    margin-top: 12px;
}
.right_content{
    width: 75%;
}
.right_content img{
    width: 300px;
}
.right_content>div>p{
    font-size: 18px;
    color: #C69C6D;
}
.right_content>div>p>span{
    font-size: 26px;
}
.right_content>ul{
    margin: 8px 20px 0px;
}
.right_content>ul>li{
    font-size: 12px;
    margin: 5px 0px;
    height: 25px;
    line-height: 25px;
}
.right_content>ul>li i{
    background-position: 104px -5px;
    background-size: 1300% auto;
    width: 25px;height: 25px;
    margin: 0 8px 0 0;
}
.right_content>ul>li:nth-child(2) i{
    background-position: 77px -5px;
}
.right_content>ul>li:nth-child(3) i{
    background-position: 51px -5px;
}
.right_content>ul>li:nth-child(4) i{
    background-position: 25px -5px;
}
.space{
    display: flex;
    width: 50%;
    justify-content: space-between;
    align-items: center;
    height: 44px;
    margin-bottom: 14px;
}
.space>a{
    display: block;
    border: 1px solid #e7e0dd;
    width: 100px;
    height: 30px;
    line-height: 30px;
    padding: 0 5px;
    text-align: center;
    font-size: 12px;
    position: relative;
}
.space>a:hover{
    color: #c2af96;
}
.space>a.active{
    border-color: #684029;
}
.space>a.active>i{
    display: block;
}
.space>a>i{
    background-image: url("../assets/img/icon.png");
    height: 10px;width: 10px;
    position: absolute;
    top: 0; left: 0;
    margin: 0;
    background-position: 0 77px;
    background-size: 3000% auto;
    display: none;
}
</style>