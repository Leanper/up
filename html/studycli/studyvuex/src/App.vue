<template>

  <h2>{{$store.state.couter}}</h2>
<h2>所得税</h2>
  <hello-vuex></hello-vuex>
</template>

<script>

import HelloVuex from "./components/HelloVuex";
import store from './store'
export default {
  name: 'App',
  store,
  components: {
    HelloVuex
  }
}
</script>

<style>


</style>
