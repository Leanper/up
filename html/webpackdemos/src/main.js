


const {add,mul} = require ('./mathutils.js')
console.log(add(20,20))
console.log(mul(40,20))

import {dogs} from "./dog";

console.log(dogs);

import {name,age} from "./person";

console.log(name);
console.log(age);
require('./css/normal.css')
// TODO 全局还是本地的配置

import Vue from 'vue'
import App from './vue/App.vue'

new Vue({
    el:'#app',
    template:'<App/>'
    ,components:{
      App  
    },

})


