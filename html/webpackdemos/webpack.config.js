
const  path =require('path')
module.exports={

    entry:'./src/main.js',
    output:{
        path:path.resolve(__dirname,'dist'),
        filename:'bundle.js'
    },

    module:{
        rules: [
            {
                test: /\.css$/i,
                use: ["style-loader", "css-loader"],
            },
            {
                test: /\.m?js$/,
                exclude: /(node_modules|bower_components)/,
                use: {
                    loader: 'babel-loader',
                    options: {
                        presets: ['es2015']
                    }
                }
            },
            {
                test: /\.(png|jpg|gif)$/i,
                use: [
                    {
                        loader: 'url-loader',
                        options: {
                            //当图片小于limit转化为base64 当大于limit需要使用fileloader

                            limit: 8192,
                        },
                    },
                ],
            },
            {
                test: /\.vue$/,
                use: [
                    {
                        loader: 'vue-loader',

                    },
                ],
            }
        ],

    },
    resolve:{
        extensions:['vue'],
        alias:{
            'vue$': 'vue/dist/vue.esm.js',

        }
    }
}