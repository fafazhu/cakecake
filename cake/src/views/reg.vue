<template>
    <div class="container_box">
        <div class="reg_box">
            <h5 class="text-center">用户注册</h5>
            <input id="phone" type="text" placeholder="输入手机号码" class=""><br>
            <input id="upwd" type="password" placeholder="密码：请输入8~20字符，需同时包含英文和数字"><br>
            <input id="upwd2" type="password" placeholder="确认密码"><br>
            <input type="text" placeholder="短信验证码" class="sm_input"><button class="btn_yzm">获取验证码</button><br>
            <input type="date" placeholder="请选择生日">
            <span></span>
            <button class="bt_reg">注册</button>
            <div class="mt-3">
                <input id="check" type="checkbox" class="checkbox m-0 pt-1">
                <label for="check" class="m-0">已阅读并同意</label><a href="reg_rule.html">21客会员协议</a>和<a href="protect_rule.html">隐私保护政策</a>
            </div>
        </div>
    </div>
</template>
<style scoped>
.container_box{
    width: 100%;height: 550px;
    background-image: url("../assets/img/bg.jpg");
    background-repeat: no-repeat;
    background-position: left bottom;
    position: relative;
    top:70px;
    z-index: 1;
    font-size: 12px;
    color: #684029;
}
.reg_box{
    width: 386px;
    padding: 28px 42px;
    border: 1px #E9E9E9 solid;
    background: #fff;
    position: absolute;
    top: 114px; right: 15%;
}
.reg_box input{
    width: 302px;height: 38px;
    line-height: 38px;
    padding: 0px 5px;
    margin: 5px 0px;
    border-radius: 2px;
    border:1px solid #efefef;
    outline: 0;
}
.reg_box input:focus{
    border:1px solid #bfbfbf;
}
.sm_input{
    width: 140px !important;
}
.btn_yzm{
    width: 149px; height: 36px;
    color: #684029;
    background: #FAFAFA;
    border: 1px solid #EBEBEB;
    border-radius: 2px;
    cursor: pointer;
    margin-left: 11px;
}
.bt_reg{
    background: #442818;
    border: 0;
    border-radius: 2px;
    width: 302px;height: 48px;
    font-size: 18px;
    color: #fff;
    cursor: pointer;
}
.checkbox{
    width: 13px !important;height: 13px !important;
    cursor: pointer;
}
.checkbox+label{cursor: pointer;}
.checkbox~a{
    color: #2a99fa;
    font-size: 12px;
}
</style>