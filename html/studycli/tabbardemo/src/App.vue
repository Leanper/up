<template>
<div>

  <router-view></router-view>
  <tabbar>

    <tabbar-item path="/home" activeColor="green">
      <img slot="item-icon" src="../src/assets/img/tabbar/item-home_unselected.svg">
      <img slot="item-icon-active" src="../src/assets/img/tabbar/item-home_selected.svg">

      <div slot="item-text">首页</div>
    </tabbar-item>

    <tabbar-item path="/cat" activeColor="blue">
      <img slot="item-icon" src="../src/assets/img/tabbar/item-me_unselected.svg">
      <img slot="item-icon-active" src="../src/assets/img/tabbar/item-me_selected.svg">

      <div slot="item-text">目录</div>
    </tabbar-item>

    <tabbar-item path="/shop">
      <img slot="item-icon" src="../src/assets/img/tabbar/item-home_unselected.svg">
      <img slot="item-icon-active" src="../src/assets/img/tabbar/item-home_selected.svg">

      <div slot="item-text">商店</div>
    </tabbar-item>

    <tabbar-item path="/profile">
      <img slot="item-icon" src="../src/assets/img/tabbar/item-me_unselected.svg">
      <img slot="item-icon-active" src="../src/assets/img/tabbar/item-me_selected.svg">

      <div slot="item-text">我的</div>
    </tabbar-item>
  </tabbar>
</div>
</template>

<script>

import Tabbar from "./components/tabbar/Tabbar";
import TabbarItem from "./components/tabbar/TabbarItem";
export default {
  name: 'App',

  components: {
    Tabbar,
    TabbarItem

  }
}
</script>

<style>



</style>
