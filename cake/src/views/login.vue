<template>
    <div class="container_box">
        <div class="reg_box">
            <ul class="nav nav-tabs">
                        <li class="nav-item"><a data-toggle="tab" class="nav-link active" href="#tab1">账号密码登录</a></li>
                        <li class="nav-item"><a data-toggle="tab" class="nav-link" href="#tab2">手机验证码登录</a></li>
            </ul>
            <div class="tab-content">
                <div id="tab1" class="tab-pane active">
                    <input v-model="phone" type="text" placeholder="请输入您的手机号" @blur="checkPhone"><br>
                    <input v-model="upwd" type="password" placeholder="输入密码" @blur="checkUpwd"><br>
                </div>
                <div id="tab2" class="tab-pane">
                        <input id="phone" type="text" placeholder="请输入您的手机号" class=""><br>
                        <input type="text" placeholder="短信验证码" class="sm_input"><button class="btn_yzm">获取验证码</button><br>
                        <span></span>
                </div>
            </div>
            <span class="msg"></span>
            <button :class="isdisabled?'bt_dis':'bt_reg'" @click="login" :disabled="isdisabled">登录</button>
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
<script>
import {mapMutations} from "vuex";
export default {
    data() {
        return {
            phone:"",
            upwd:"",
            isdisabled:true,
            checkel:{
                phone:false,
                upwd:false,
            }
        }
    },
    methods: {
        login(){
            this.axios.post("/user/login",this.QS.stringify({
                phone:this.phone,
                upwd:this.upwd,
            }))
            .then(res=>{
                if(res.data.code==200){
                    this.MessageBox.alert('登录成功！', '提示', {
                        confirmButtonText: '确定',
                        type:'success'
                    }).then(res=>{
                        this.$router.push("/");
                    });
                    
                    this.setUname(this.phone);
                    
                }else{
                    this.MessageBox.alert('用户名和密码错误！', '提示', {
                        confirmButtonText: '确定',
                        type:'error'
                    }).then(res=>{
                    })
                }
            })
        },
        check(reg,text,msg1,msg2,msg3,el){
            var msg=document.querySelector(".msg");
            if(!text){
                msg.style="color:#f00";
                msg.innerHTML="<i class='el-icon-warning'></i> "+msg1;
                this.checkel[el]=false;
            }else if(!reg){
                msg.style="color:#f00";
                msg.innerHTML="<i class='el-icon-warning'></i> "+msg2;
                this.checkel[el]=false;
            }else{
                msg.style="color:#67C23A";
                msg.innerHTML="<i class='el-icon-success'></i> "+msg3;
                this.checkel[el]=true;
            }
        },
        checkPhone(){
            var reg=/^1[3-8]\d{9}$/.test(this.phone);
            this.check(reg,this.phone,"手机号不能为空！","手机号格式错误！","手机号格式正确！","phone");
        },
        checkUpwd(){
            var reg=/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9a-zA-Z]{8,20}$/.test(this.upwd);
            this.check(reg,this.upwd,"密码不能为空！","密码要8~20字符并同时包含英文和数字哦","密码格式正确！","upwd");
        },
        ...mapMutations(["setUname"])
    },
    
    watch: {
        phone(){
            this.checkPhone();
        },
        upwd(){
            this.checkUpwd();
        },
        checkel:{
            handler(newVal, oldVal) {
                if(this.checkel.phone&&this.checkel.upwd
                ){
                    this.isdisabled=false;
                }else{
                    this.isdisabled=true;
                }
            },
            deep: true
        }
    },
}
</script>
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
    margin: 10px 0px;
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
.bt_reg,.bt_dis{
    background: #442818;
    border: 0;
    border-radius: 2px;
    width: 302px;height: 48px;
    font-size: 18px;
    color: #fff;
    cursor: pointer;
}
.bt_dis{
    background: #686868;
    cursor: default;
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
.msg{
    height: 22px;
    display: block;
}
</style>