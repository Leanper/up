<template>
  <div id="app">
    <h2>{{$store.state.counter}}</h2>
    <button @click="addaction">+</button>
    <button @click="subaction">-</button>
    <h2>getters获取平方{{$store.getters.powercounter}}</h2>
    <h2>getters获取学生信息{{$store.getters.getstudent}}</h2>
    <h2>getters获取学生长度{{$store.getters.getstudentlength}}</h2>
    <h2>getters获取{{$store.getters.getstudentinfo((30))}}</h2>
    <h2>-----------</h2>
    <button @click="addactionnum(5)">+5</button>
    <h2>{{$store.state.counter}}</h2>

    <button @click="addStudent">添加用户</button>

    <button @click="submitmutildata">传递多个参数</button>
    <h2>{{$store.state.info}}</h2>
    <button @click="updateinfo">修改信息</button>
    <h2>{{$store.state.info}}</h2>
    <HelloWorld />
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'
import store from './store'

import * as mymutations from './store/mutation-type'
export default {
  name: 'app',
  store,
  components: {
    HelloWorld
  },
  methods:{
    addaction(){
      this.$store.commit(mymutations.ADD)
    },
    subaction(){
      this.$store.commit('sub')
    },

    addactionnum(num){
      this.$store.commit('addNum',num)
    },

    addStudent(){

      const num ={id:1,name:'粘上',age:80}

      this.$store.commit('addStu',num)
    },
    submitmutildata(){
      this.$store.commit({
        type:'submit',
        agemin:20,
        agemax:60
      })
    },
    updateinfo(){
      this.$store.commit('updatestudent')
    }


  }
}
</script>

<style>

</style>
