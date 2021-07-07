<template>
 <div>
   <ui name="as">
     <li>消息*4</li>
     <li>消息*4</li>
     <li>消息*4</li>
   </ui>
 </div>
</template>

<script>
export default {
name: "HomeMessage",
  beforeRouteEnter(to,from,next){
  console.log(from.matched[0].meta.title)
    next()
  },
}
</script>

<style scoped>

</style>