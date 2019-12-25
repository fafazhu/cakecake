import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from "axios"
import myhead from "./components/head"
import myfoot from "./components/foot.vue"


axios.defaults.baseURL="http://localhost:5050"
Vue.prototype.axios=axios;

Vue.config.productionTip = false
Vue.component("myhead",myhead);
Vue.component("myfoot",myfoot);

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
