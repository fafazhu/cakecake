<template>
    <div class="container_box">
        <div class="reg_box">
            <ul class="nav nav-tabs">
                        <li class="nav-item"><a data-toggle="tab" class="nav-link active" href="#tab1">账号密码登录</a></li>
                        <li class="nav-item"><a data-toggle="tab" class="nav-link" href="#tab2">手机验证码登录</a></li>
            </ul>
            <div class="tab-content">
                <div id="tab1" class="tab-pane active">
                    <input id="uname" type="text" placeholder="请输入您的账号" class=""><br>
                    <input id="upwd" type="password" placeholder="输入密码"><br>
                    <span></span>
                </div>
                <div id="tab2" class="tab-pane">
                        <input id="phone" type="text" placeholder="请输入您的手机号" class=""><br>
                        <input type="text" placeholder="短信验证码" class="sm_input"><button class="btn_yzm">获取验证码</button><br>
                        <span></span>
                </div>
            </div>
            <button class="bt_reg">登录</button>
            <div class="mt-3">
                    <input id="check" type="checkbox" class="checkbox m-0">
                    <label for="check" class="m-0">记住账号</label>
                    <span class="span1">
                        <a href="">忘记密码</a>
                        <a href="reg">去注册</a>
                    </span>
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
    top:80px;
    z-index: 1;
    font-size: 12px;
    color: #684029;
}
.reg_box{
    width: 400px;
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

.span1{
    margin-left: 31%;
}
.span1 a{
    font-size: 12px;
}
.span1 a:hover{
    text-decoration: none;
    color: #744f3a;
}
.span1 a~a{
    margin-left: 20px;
}

</style>