import Vue from 'vue'
import App from './App.vue'

import axios from "axios";

Vue.config.productionTip = false

new Vue({
  render: h => h(App),
}).$mount('#app')


axios.defaults.baseURL='http://123.207.32.32:8000/';
axios.defaults.timeout=5000


// axios({
//   url:'home/multidata',
//   method:'get'
// }).then(result=>{
//   console.log(result);
// })
//
// axios.get('home/data?type=sell&page=2').then(res=>{
//   console.log(res);
// })
//
//
// axios({
//   url:'home/data',
//   params:{
//     tpye:'sell',
//     page:1
//
//   }
// }).then(res=>{
//   console.log(res);
// })
//
//
// // 2.并发请求
//
// axios.all([
//     axios({
//       url:'home/multidata',
//       method:'get'
//     }),
//   axios({
//     url:'home/data',
//     params: {
//       tpye: 'sell',
//       page: 1
//     }
//
//   }),
// ])
//
// //     .then(results=>{
// //   console.log('病发请求');
// //   console.log(results[0]);
// //   console.log(results[1]);
// // })
// .then(axios.spread((a,b)=>{
//   console.log(a);
//   console.log(b);
// }))

import {request} from './network/request'

// request({
//   url:'home/multidata',
//
// }, res=>{
//   console.log(res);
// },err=>{
//   console.log(err);
//
// })

// request({
//   baseConfig:{
//     url:'home/multidata',
//   },
//   success: function (res) {
//     console.log(res);
//   },failure:function (err) {
//     console.log(err);
//   }
//
// })


request({
  // url:'home/multidata',
  url:'show_books',
}).then(res=>{
  console.log(res);
}).catch(err=>{
  console.log(err);
})