<template>
  <div id="app">
    <img src="./assets/logo.png">
<!--    <HelloWorld/>-->
    <MyHello></MyHello>
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld'
import MyHello from "./components/MyHello";
export default {
  name: 'App',
  components: {
    MyHello
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
