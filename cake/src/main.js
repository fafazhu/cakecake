import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from "axios"
import QS from "qs"
import myhead from "./components/head"
import myfoot from "./components/foot.vue"
import { DatePicker,MessageBox,Button,InputNumber,Badge } from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import infiniteScroll from 'vue-infinite-scroll'


axios.defaults.baseURL="http://localhost:4000";
axios.defaults.withCredentials=true;
Vue.prototype.axios=axios;
Vue.prototype.QS=QS;
Vue.prototype.MessageBox=MessageBox;

Vue.config.productionTip = false
Vue.component("myhead",myhead);
Vue.component("myfoot",myfoot);

Vue.use(DatePicker);
Vue.use(infiniteScroll);
Vue.use(Button);
Vue.use(InputNumber);
Vue.use(Badge);

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
