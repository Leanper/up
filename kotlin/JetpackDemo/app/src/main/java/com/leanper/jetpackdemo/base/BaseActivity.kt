package com.leanper.jetpackdemo.base

import android.util.Log
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity

val isShowLog:Boolean=true

open class BaseActivity: AppCompatActivity() {

}

/*
* 展示吐司
* */
fun BaseActivity.showToast(info:Any){
    Toast.makeText(this,info.toString(),Toast.LENGTH_LONG).show()
}

/*
* 展示log
*/

fun BaseActivity.showLog(TAG:String,info:Any){
    Log.d(TAG,"展示的log为--->$info")

}