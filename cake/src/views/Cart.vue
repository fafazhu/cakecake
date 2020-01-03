<template>
    <div>
        <div v-if="totalcount==0" class="nogoods">
            <img src="../assets/img/icon_nogoods.png" alt="">
            <p>您的购物车里还没有商品</p>
            <a href="/">去购物>></a>
        </div>
        <div v-else>
            <ul class="title">
                <li>商品</li>
                <li>单价</li>
                <li>数量</li>
                <li>金额</li>
            </ul>
            <div class="cartlist">
                <div class="listitem">
                    <div class="cake">
                        <input type="checkbox">
                        <div>
                        <img :src="require('../assets/product'+cart[0].img)" alt="">
                        </div>
                        <div class="caketext">
                            <a href="">{{cart[0].title}}</a>
                            <p>
                            <span>规格：</span>
                            <span>{{cart[0].size}}</span>
                            </p>
                        </div>
                    </div>
                    <div class="price1">¥{{cart[0].price}}.00</div>
                    <el-input-number v-model="num" @change="handleChange" :min="1" :max="10" size="small"></el-input-number>
                    <div class="price2">¥{{cart[0].price*num}}.00</div>
                    <i class="el-icon-close"></i>
                </div>
                <div class="jiesuan">
                    <div>
                        <input type="checkbox"> 全选
                    </div>
                    <span>总计：<span class="price2">price</span></span>
                </div>
                <div class="buttonright">
                    <a href="" class="bt_bg_brow">去结算</a>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            totalcount:1,
            cart:[{title:"米道",img:"/0/0.png",size:"454g(1.0磅)",price:"298"}],
            num: 1
        }
    },
    methods: {
        handleChange(value) {
        console.log(value);
      }
    },
}
</script>
<style scoped>
.nogoods{
    text-align: center;
    margin-top: 83px;
}
.nogoods>img{width: 204px;}
.nogoods>p,.caketext>p,.nogoods>a:hover{color: #D5BFA7;}
.title{
    margin: 0 auto;
    margin-top: 115px;
    display: flex;
    width: 1202px;height: 44px;
    background: #FAFAFA;
    border: 1px solid #E1E1E1;
}
.title>li{
    line-height: 44px;
    width: 300px;
    text-align: center;
}
.title>li:first-child{
    margin-left: 60px;
}
.title>li:last-child{
    text-align: start;
}

.cartlist{
    width: 1202px;
    margin: 0 auto;
    margin-top: 10px;
    border: 1px solid #E1E1E1;
}
.listitem{
    margin: 24px;
    display: flex;
    justify-content: space-around;
    border-bottom: 2px dashed #F1F1F1;
    position: relative;
}
.listitem img{width: 82px;margin-top: -15px;}
.cake{display: flex;width: 280px;}
.price1{width: 150px;}
.price2{color: #f00;}
.jiesuan{
    display: flex;
    justify-content: space-between;
    padding: 10px 80px;
}
.buttonright{text-align: end;margin: 0 20px 10px 20px;}
</style>