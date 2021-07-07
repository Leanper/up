<template>
  <div>
    <h2> {{ message }} </h2>
    <button @click="btnclick">按钮</button>
  </div>
</template>

<script>
export default {
  name: "App"
}
</script>

<style scoped>
.body{
  background: aqua;
}
</style>