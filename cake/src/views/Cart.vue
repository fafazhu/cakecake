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
                <li><a href="javascript:;" @click="clearcart"><i class="el-icon-delete" ></i>清空购物车</a></li>
            </ul>
            <div class="cartlist">
                <div v-for="(item,i) of cartlist" :key="i" class="listitem">
                    <div class="cake">
                        <input type="checkbox" v-model="item.select" @change="changeItem">
                        <div>
                        <img :src="require('../assets/product'+item.img)" alt="">
                        </div>
                        <div class="caketext">
                            <a href="">{{item.title}}</a>
                            <p>
                            <span>规格：</span>
                            <span>{{item.size}}</span>
                            </p>
                        </div>
                    </div>
                    <div class="price1">¥{{item.price}}.00</div>
                    <el-input-number v-model="item.count" @change="changecart(item.count,item.pid)" :min="1" :max="10" size="small"></el-input-number>
                    <div class="price2">¥{{item.price*item.count}}.00</div>
                    <i class="el-icon-close" @click="delcart(item.pid)"></i>
                </div>
                <div class="jiesuan">
                    <div>
                        <input type="checkbox" @change="selectAll" v-model="all"> 全选
                    </div>
                    <span>总计：<span class="price2">¥{{sum}}.00</span></span>
                </div>
                <div class="buttonright">
                    <a href="/" class="bt_bg_brow bg-info">继续购物</a>
                    <a href="" class="bt_bg_brow">去结算</a>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import {mapMutations,mapState} from "vuex";
export default {
    data() {
        return {
            all:false,
            isdisabled:true
        }
    },
    methods: {
        selectAll(){
            for(var item of this.cartlist){
                item.select=this.all;
            }
        },
        changeItem(){
            var s=0;
            for(var item of this.cartlist){
                if(item.select){
                    s+=1;
                }
            }
            if(s==this.cartlist.length){
                this.all=true;
            }else{
                this.all=false;
            }
        },
      ...mapMutations(["addcart","changecart","delcart","clearcart"])
    },
    computed: {
        sum:function(){
            let total=0;
            for(var item of this.cartlist){
                if(item.select){
                    total+=item.price*item.count;
                }
            }
            return total;
        },
        ...mapState(["cartlist","totalcount"])
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
    justify-content: space-around;
    width: 1202px;height: 44px;
    background: #FAFAFA;
    border: 1px solid #E1E1E1;
}
.title>li{
    line-height: 44px;
    width: 130px;
    text-align: center;
}
.title>li:first-child{
    margin-left: 60px;
    width: 290px;
}
.title a:hover{color: #D5BFA7;}
/* .title>li:nth-child(3){
    width: 80px;
} */
/* .title>li:last-child{
    text-align: start;
} */

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
.cake{
    display: flex;
    width: 300px;
}
.price1,.price2{width: 130px;text-align: center}
.price2{color: #f00;text-align: start;padding-left: 10px}
.jiesuan{
    display: flex;
    justify-content: space-between;
    padding: 10px 67px;
}
.buttonright{display: flex;
    justify-content: space-between;margin: 0 20px 10px 20px;}
.el-icon-close{width: 50px;}
</style>