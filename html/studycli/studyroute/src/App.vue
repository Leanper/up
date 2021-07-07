<template>
  <div id="app">
   <router-link to="/home" tag="button" replace active-class="active">首页</router-link>
    <router-link :to="{path:'/about',query:{name:'张三',sex:'man'}}" tag="button" replace active-class="active">关于</router-link>
    <router-link :to="'/user/'+userId" tag="button" replace active-class="active">我的</router-link>


    <h2>{{message}}</h2>
<!--    <button @click="btns">首页</button>-->
<!--    <button @click="btna">关于</button>-->
    <router-view></router-view>

  </div>
</template>

<script>

export default {
  name: 'App',
  data(){

    return{
      userId:'李银河',
      message:'hh'
  }
  },

  methods:{
    btns(){
      this.$router.push('/home')
      //替换 没有返回
      this.$router.replace('/home')
    },
    btna(){
      this.$router.push('/about')
    }
  }



}
</script>

<style>
button{
  margin: 10px;
}

.active{
   color: red;
 }

</style>
