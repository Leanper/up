<template>
  <div>
    <h2>首页</h2>
    <p>sssss</p>
    <router-link to="/home/news">新闻</router-link>
    <router-link to="/home/message">消息</router-link>

    <keep-alive>
      <router-view></router-view>

    </keep-alive>
  </div>
</template>

<script>
export default {
name: "Home",
  created() {
    console.log('create');
  },
  destroyed() {
    console.log("destory");
  },
  activated() {
    console.log('activated');
    this.path=this.$route.path
  },
  deactivated() {
    console.log('deactivated');

  }
}
</script>

<style scoped>

</style>