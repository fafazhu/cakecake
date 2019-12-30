import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'home',
    component: Home
  },
  {
    path: '/activity/:hid',
    name: 'activity',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "activity" */ '../views/Activity.vue')
  },
  {
    path: '/login',
    name: 'login',
    component: () => import(/* webpackChunkName: "login" */ '../views/login.vue')
  },
  {
    path: '/reg',
    name: 'reg',
    component: () => import(/* webpackChunkName: "reg" */ '../views/reg.vue')
  },
  {
    path: '/cakeDetail',
    name: 'cakeDetail',
    component: () => import(/* webpackChunkName: "cakeDetail" */ '../views/cake_detail.vue')
  },
  {
    path: '/protectRule',
    name: 'protectRule',
    component: () => import(/* webpackChunkName: "protectRule" */ '../views/protect_rule.vue')
  },
  {
    path: '/regRule',
    name: 'regRule',
    component: () => import(/* webpackChunkName: "regRule" */ '../views/reg_rule.vue')
  }    



]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes,
  scrollBehavior (to, from, savedPosition) {
    return { x: 0, y: 0 }
  }
})

export default router
