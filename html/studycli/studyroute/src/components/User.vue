<template>
<div>
  <h2>{{uerId}}+  df</h2>
  <h2>用户界面</h2>

  <h2>{{$route.params.userId}}</h2>
</div>
</template>

<script>
export default {
name: "User",
  computed:{
     uerId() {
       return this.$route.params.userId
     }
  }
}
</script>

<style scoped>

</style>