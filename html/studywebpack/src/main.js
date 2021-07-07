

const {add,mul} = require ('./mathutils.js')
console.log(add(20,20))
console.log(mul(40,20))

import Vue from 'vue'
import App from './vue/App.vue'
new Vue({
    template:`<App/>`,
    components:{
        App
    },

    data: {
        message:"和"
    },
    methods:{
        btnclick(){
            console.log('按钮按下')
        }
    }
})