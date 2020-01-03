import Vue from 'vue'
import Vuex from 'vuex'
import axios from "axios"

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    uname:localStorage.getItem("uname") || sessionStorage.getItem("uname") || "",
    Iphone:""
  },
  mutations: {
    // 专门负责修改state中变量
    setUname(state,uname){state.uname=uname},
    setPhone(state,phone){state.Iphone=phone}
  },
  actions: {
    // 专门负责发送异步ajax请求
    login(context){
      // context代表整个vuex对象
      context.commit("setUname",uname);
    }
  },
  modules: {
  }
})
