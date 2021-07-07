<template>
  <div class="tabbar">
    <slot><tabbar-item></tabbar-item></slot>
  </div>
</template>


<script>
import TabbarItem from "./TabbarItem";
export default {
name: "Tabbar",
  components:{
    TabbarItem
  }
}
</script>

<style>
@import "../../assets/css/base.css";
.tabbar{
  position: fixed;
  display: flex;
  background-color: #f6f6f6;
  bottom: 0;
  left: 0;
  right: 0;
  box-shadow: 0 -1px 10px rgba(100,100,100, 0.08);

}
</style>