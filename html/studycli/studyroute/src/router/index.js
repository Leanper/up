import VueRouter from 'vue-router'
import Vue from 'vue'
//1.通过Vue.use导入插件
// import Home from '../components/Home'
// import About from '../components/About'
// import User from "../components/User";

const Home =()=>import('../components/Home')
const About =()=>import('../components/About')
const User =()=>import('../components/User')


const HomeMessage =()=>import('../components/HomeMessage')
const HomeNews =()=>import('../components/HomeNews')

Vue.use(VueRouter)

const routes=[

    {
        path:'',
        redirect:'/home'
    },
    {
        path:'/home',
        component:Home,
        meta:{
            title:'首页'
        },

        children:[
            {
                path:'',
                redirect:'news',

            },
            {
                path:'news',
                component:HomeNews,
                // beforeEnter:(to,from,next)=>{
                //
                //     this.path=this.$route.path
                //     next()
                // }
            },
            {
                path:'message',
                component:HomeMessage,
                // beforeEnter:(to,from,next)=>{
                //
                //     this.path=this.$route.path
                //     next()
                // }
            },
        ]

    },
    {
        path:'/about',
        component:About,
        meta:{
            title:'关于'
        },
        beforeEnter:(to,from,next)=>{
            console.log('关于');
            console.log(from.meta.title);
            next()
        }
    },
    {
        path:'/user/:userId',
        component:User,
        meta:{
            title:'用户'
        }
    }


]

const router = new VueRouter({
    routes,
    mode:'history',
    linkActiveClass:'active'
    }
)


//后置守卫（guard)
router.beforeEach((to, from, next) => {
    // document.title=to.matched[0].meta.title
    next()
}),

//后置钩子（hook)
router.afterEach((to, from) => {
    document.title=to.matched[0].meta.title
    console.log(from);

})

export default router