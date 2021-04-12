package com.leanper.jetpackdemo.base

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import androidx.fragment.app.Fragment
import androidx.lifecycle.LifecycleOwner

abstract open class BaseFragment :Fragment(),LifecycleOwner {
     abstract fun  getLayoutId(): Int
     override fun onCreateView(inflater: LayoutInflater,
                               container: ViewGroup?,
                               savedInstanceState: Bundle?): View? {
         var rootview=inflater.inflate(getLayoutId(),container,false)

         initView(
                 rootview,
                 container,
                 inflater
         )
         return rootview
     }



     open fun initView(rootview: View?, container: ViewGroup?, inflater: LayoutInflater) {
     }
 }

fun BaseFragment.showToast(info:Any){
    Toast.makeText(context,info.toString(),Toast.LENGTH_LONG).show()
}