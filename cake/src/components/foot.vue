<template>
    <div class="container m-0 p-0">
        <div>
            <p class="text-center m-0"><img src="https://static.21cake.com/themes/site/img/footer-logo.png" class="img1"></p>
            <ul class="breadcrumb justify-content-center">
                <li class="breadcrumb-item"><a href="" class="text-center w-100">联系我们</a></li>
                <li class="breadcrumb-item"><a href=""class="text-center w-100">订购帮助</a></li>
                <li class="breadcrumb-item"><a href="">企业合作</a></li>
                <li class="breadcrumb-item"><a href="">生产经营资质</a></li>
                <li class="breadcrumb-item"><a href="">公告专区</a></li>
            </ul>
            <div class="d-flex justify-content-center position-relative">
                <a href="" class="footer-icon">
                    
                    <img src="https://static.21cake.com/themes/site/img/footericon-01.png" class="w-100"></a>
                <a href="" class="footer-icon">
                    <p class="p2 pos1"><img src="https://static.21cake.com/themes/site/img/footer-erweima.png" class="w-100"></p>
                    <img src="https://static.21cake.com/themes/site/img/footericon-02.png" class="w-100"></a>
                <a href="" class="footer-icon">
                    <p class="p2 pos2"><img src="https://static.21cake.com/themes/site/img/erweima.png" class="w-100"></p>
                    APP
                </a>
            </div>
            <div class="footer_text text-center">
                <p class="font-weight-bold">订购专线：400 650 2121（服务时间 08:00–22:00），企业团购热线：021-37768396</p>
                <p>客服电话：021-23099721（全国），kefu@21cake.com（邮箱）</p>
                <p>杭州/广州：提前5小时预订；北京：提前6小时预订；上海：提前5.5-6小时预订；天津/苏州/无锡/深圳：提前8小时预订（部分偏远地区除外，当日22点以后订单，于次日8点开始审核）</p>
                <p>当日蛋糕配送截止下单时间：北京/上海：16:30；杭州/广州：14:00；天津：10:30；苏州/无锡/深圳：11:00</p>
                <p>网站注册公司名称: 北京廿一客食品有限公司 地址: 北京市北京经济技术开发区兴海二街5号院3号楼</p>
            </div>
            <div class="footer_copyright text-center"> Copyright© 21Cake蛋糕官网商城 2007-2019, 版权所有 京ICP备14006254号-1</div>
        </div>
    </div>
</template>
<style scoped>
.container{background: #333333;color: #9a9a9a;}
.img1{width: 96px;padding-top: 50px;padding-bottom: 13px;}
.container .breadcrumb{background-color: #333333 ;}
.container .breadcrumb-item + .breadcrumb-item::before{
    content: "|";
    color: #9a9a9a;
    padding: 0;
}
.container .breadcrumb-item>a{padding: 0px 50px;color: #fff;font-size: 12px;}
.footer-icon{
    background-color: #494949;
    border-radius: 50%;
    height: 50px;width: 50px;
    padding:10px;
    color: #fff;
    font-size: 18px;
    margin: 0px 25px;
}
.footer-icon:hover{text-decoration: none;color: #fff;}
.footer_text{
    font-size: 10px;
    margin-top: 25px;
}
.footer_text p{margin: 0;}
.footer_copyright{
    margin-top:15px ;
    padding: 12px 0px 15px 0px;
    border-top: 1px solid #616161;
    font-size: 10px;
}
.p2{
    height: 120px;width: 120px;
    position: absolute;
    top:-133px;
    border: 10px solid #fff;
    display: none;
}
.pos1{left: 45%;}
.pos2{left: 53%;}
a.footer-icon:hover .p2{display: block;}
</style>