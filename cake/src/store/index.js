import Vue from 'vue'
import Vuex from 'vuex'
import axios from "axios"

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    uname:localStorage.getItem("uname") || sessionStorage.getItem("uname") || "",
    Iphone:"",
    cartlist:JSON.parse(localStorage.getItem("cartlist")) || [],
    totalcount:parseInt(localStorage.getItem("totalcount")) || 0
  },
  mutations: {
    // 专门负责修改state中变量
    setUname(state,uname){state.uname=uname},
    setPhone(state,phone){state.Iphone=phone},
    // 添加购物车
    addcart(state,product){
      if(state.cartlist.length>0){
        for(var i=0;i<state.cartlist.length;i++){
          if(state.cartlist[i].pid==product.pid){
            state.cartlist[i].count+=1;
            state.totalcount+=1;
            this.commit('savecart');
            return;
          }
        }
      }
      state.cartlist.push(product);
      state.totalcount+=1;
      this.commit('savecart');
    },
    changecart(state,count,pid){
      state.totalcount=0;
      for(var i=0;i<state.cartlist.length;i++){
        if(state.cartlist[i].pid==pid){
          state.cartlist[i].count=count;
        }
        state.totalcount+=state.cartlist[i].count;
      }
      this.commit('savecart');
    },
    delcart(state,pid){
      for(var i=0;i<state.cartlist.length;i++){
        if(state.cartlist[i].pid==pid){
          state.totalcount-=state.cartlist[i].count;
          state.cartlist.splice(i,1);
        }
      }
      this.commit('savecart');
    },
    savecart(state){
      let strcart=JSON.stringify(state.cartlist);
      localStorage.setItem("cartlist",strcart);
      localStorage.setItem("totalcount",state.totalcount);
    },
    clearcart(state){
      localStorage.removeItem("cartlist");
      localStorage.removeItem("totalcount");
      state.cartlist=[];
      state.totalcount=0;
    },
    updatecart(state){
      state.cartlist=JSON.parse(localStorage.getItem("cartlist"));
      state.totalcount=parseInt(localStorage.getItem("totalcount"));
    }
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
