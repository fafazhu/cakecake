<template>
    <div class="container_box">
        <div class="reg_box">
            <h5 class="text-center">用户注册</h5>
            <input v-model="phone" type="text" placeholder="输入手机号码" @blur="checkPhone"><br>
            <input v-model="upwd" type="password" placeholder="密码：请输入8~20字符，需同时包含英文和数字" @blur="checkUpwd"><br>
            <input v-model="upwd2" type="password" placeholder="确认密码" @blur="checkUpwd2"><br>
            <input type="text" placeholder="短信验证码" class="sm_input"><button class="btn_yzm">获取验证码</button><br>
            <div class="block mb-2">
                <el-date-picker
                v-model="date"
                type="date"
                placeholder="选择日期"
                format="yyyy 年 MM 月 dd 日"
                value-format="yyyy-MM-dd"
                size="large"
                class="w-100"
                >
                </el-date-picker>
            </div>
            <span class="msg"></span>
            <button :class="isdisabled?'bt_dis':'bt_reg'" @click="reg" :disabled="isdisabled">注册</button>
            <div class="mt-3">
                <input id="check" type="checkbox" class="checkbox m-0 pt-1" @click="isAgree($event)">
                <label for="check" class="m-0">已阅读并同意</label><a href="/regRule">21客会员协议</a>和<a href="/protectRule">隐私保护政策</a>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            date:"",
            phone:"",
            upwd:"",
            upwd2:"",
            isdisabled:true,
            checkel:{
                phone:false,
                upwd:false,
                upwd2:false,
                date:false,
                checked:false
            }
        }
    },
    methods: {
        reg(){
            this.axios.get("/user/check",{params:{phone:this.phone}})
            .then((res)=>{
                if(res.data.code==-1){
                    this.MessageBox.confirm('该用户已存在，是否直接登录?', '提示', {
                        confirmButtonText: '确定',
                        cancelButtonText: '取消',
                        type: 'warning'
                    }).then(() => {
                        this.$router.push("/login");
                    }).catch(() => {
                    });
                }else{
                    this.axios.post("/user/reg",this.QS.stringify({
                        phone:this.phone,
                        upwd:this.upwd,
                        date:this.date
                    }))
                    .then(res=>{
                        if(res.data.code==200){
                            this.MessageBox.alert('注册成功！', '提示', {
                                confirmButtonText: '确定',
                                type:'success'
                            }).then(res=>{
                                this.$router.push("/login");
                            })
                        }
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
            this.check(reg,this.upwd,"密码不能为空！","密码要8~20字符并同时包含英文和数字哦","密码格式正确！请确认密码！","upwd");
            if(this.upwd!==this.upwd2){
                this.checkel.upwd2=false;
            }else{
                this.checkel.upwd2=true;
            }
        },
        checkUpwd2(){
            var reg=this.upwd==this.upwd2;
            this.check(reg,this.upwd,"要先在第一个密码框输入哦","两次密码需要保持一致哦","确认密码成功！","upwd2");
        },
        isAgree(e){
          this.checkel.checked=e.target.checked?true:false;
        }
    },
    
    watch: {
        phone(){
            this.checkPhone();
        },
        upwd(){
            this.checkUpwd();
        },
        upwd2(){
            this.checkUpwd2();
        },
        date(){
            if(this.date){
                this.checkel.date=true;
                console.log(this.checkel);
            }else{
                this.checkel.date=false;
            }
        },
        checkel:{
            handler(newVal, oldVal) {
                if(this.checkel.phone&&this.checkel.upwd&&this.checkel.upwd2&&this.checkel.date&&this.checkel.checked
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
    width: 386px;
    padding: 28px 42px;
    border: 1px #E9E9E9 solid;
    background: #fff;
    position: absolute;
    top: 100px; right: 15%;
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
.msg{
    height: 22px;
    display: block;
}
</style>