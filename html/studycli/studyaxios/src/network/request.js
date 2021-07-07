import axios from "axios";


export function request(config){

    const instance =axios.create({
        // headers: {
        //     'Cache-Control': 'no-cache',
        //     'Content-Type': 'application/x-www-form-urlencoded',
        //     " Access-Control-Allow-Origin":"*",
        //     "Access-Control-Allow-Headers": "*",
        //     "Access-Control-Allow-Methods":"*"
        // },
        // withCredentials:true,

        baseURL:'http://127.0.0.1:8000/',
        // baseURL:'http://123.207.32.32:8000/',
        timeout:5000
    })

    //局部拦截
    instance.interceptors.request.use(
        config=>{
            console.log(config);
            //拦截之后必须返回，否则失败
            return config

        },error => {
            console.log(error);

        })
    instance.interceptors.response.use()
    //全局拦截
    // axios.interceptors.response.use()

    return instance(config)
}



// export function request(config){
//
//     const instance =axios.create({
//         baseURL:'http://123.207.32.32:8000/',
//         timeout:5000
//     })
//
//     instance(config.baseconfig).then(
//         res=>{
//             config.success(res)
//         },
//
//
//
//     ).catch(err=>{
//         config.failure(err)
//     })
// }

// export function request(config,success,failure){
//
//     const instance =axios.create({
//         baseURL:'http://123.207.32.32:8000/',
//         timeout:5000
//     })
//
//     instance(config).then(
//         res=>{
//             success(res)
//         },
//
//
//
//     ).catch(err=>{
//         failure(err)
//     })
// }