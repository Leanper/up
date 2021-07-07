<template>
  <div class="tabbar-item" @click="itemclick">

    <div v-if="!isActive" >  <slot name="item-icon"></slot></div>
    <div v-else > <slot name="item-icon-active"></slot></div>
    <div :style="activeStyle" ><slot name="item-text"></slot></div>

  </div>
</template>

<script>
export default {
name: "TabbarItem",
  props:{
  path:String,
    activeColor : {
    type:String,
      default:"red"
    }

  },
  // data() {
  // return{
  //   // isActive: true,
  // }
  // },
  computed:{
    isActive(){

     return this.$route.path.indexOf(this.path) !== -1
   },
    activeStyle(){
      return this.isActive ?{color:this.activeColor}:{}
    }
  },
  methods:{
    itemclick(){
      console.log("tiem"+this.path);
      this.$router.push(this.path)
      this.isActive=!this.isActive
    }
  }
}
</script>

<style scoped>
.tabbar-item{
  flex: 1;
  text-align: center;
  height: 49px;
}
.tabbar-item img{
  width: 22px;
  height: 22px;
}




</style>