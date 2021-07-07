const  path =require('path')
const  webpack1 =require('webpack')
const htmlplugin =require('html-webpack-plugin')

module.exports = {
    entry:'./src/main.js',
    output:{
        path:path.resolve(__dirname,'dist'),
        filename:'bundle.js'
    },

    resolve:{
        alias:{
            'vue$':'.node_modules/vue/dist/vue.esm.js'
        }
    },
    module:{

        rules:[
            {
                test: /\.vue$/,
                use: [
                    {
                        loader: 'vue-loader',

                    },
                ],
            },

        ]
    },
    plugins:[
        new webpack1.BannerPlugin('主办权了'),
        new htmlplugin()
    ],
    devServer:{
        contentBase:'./dist',
        inline:true
    }






}