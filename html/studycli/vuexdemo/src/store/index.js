import Vue from 'vue'
import Vuex from 'vuex'

import * as mytation from './mutation-type'

//1.安装插件
Vue.use(Vuex)
//创建对象
const store = new Vuex.Store({
    state:{
        counter:0,
        student:[
            {id:1,name:'张三1',age:10},
            {id:12,name:'张三2',age:20},
            {id:13,name:'张三3',age:30},
            {id:13,name:'张三4',age:40},
            {id:13,name:'张三5',age:50},
        ],
        info:[{
            id:13,name:'李四5',age:50
        }],
    },
    mutations:{
        [mytation.ADD](state){
            state.counter++
        },
        sub(state){
            state.counter--
        },

        addNum(state,num){
            state.counter += num
        },

        addStu(state,stu){
            state.student.push(stu)
        },
        submit(state,counter){
            console.log(counter);
            // console.log(counter.agemax);
        },
        updatestudent(state){
            // Vue.set(state.info,state.info.name,'周大脸')

            state.info.name='周大脸'
        }



    },
    getters:{

        powercounter(state){
            return state.counter*state.counter
        },
        getstudent(state){

            return state.student.filter(s=>{
                return s.age>30
            })
        },
        getstudentlength(state,a){

            return a.getstudent.length
        },

        getstudentinfo(state){
            // return function (age) {
            //     return state.student.filter(s=>{
            //         return s.age>age
            //     })
            // }
            return age=>{
                return state.student.filter(s=>{return s.age>age})
            }
        },




    }


})
// 3.导出
export default store