import Vue from 'vue'
import VueRouter from 'vue-router'

const Home=()=>import('../views/home/Home')
const Cat=()=>import('../views/cat/Cat')
const Shop=()=>import('../views/shop/Shop')
const Profile=()=>import('../views/profile/Profile')

Vue.use(VueRouter)
const routes =[

    {
        path:'',
        redirect:'/home'

    },
    {
        path:'/home',
        component:Home

    },
    {
        path:'/cat',
        component:Cat

    },

    {
        path:'/shop',
        component:Shop

    },

    {
        path:'/profile',
        component:Profile

    },



]
const router =new VueRouter({
    routes,
    mode:'history'
})
export default router