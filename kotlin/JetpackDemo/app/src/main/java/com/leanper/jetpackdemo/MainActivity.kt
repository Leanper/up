package com.leanper.jetpackdemo

import android.os.Bundle
import android.view.LayoutInflater
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.LifecycleOwner
import androidx.navigation.fragment.NavHostFragment
import androidx.navigation.ui.setupWithNavController
import kotlinx.android.synthetic.main.activity_main.*


class MainActivity : AppCompatActivity(),LifecycleOwner {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)


        //初始化
        init()



    }

    /*
    * 初始化控件
    * */
    private fun init() {

        //设置这个 底部icon 自定义变化
        bottom_navigation.itemIconTintList = null

        var transaction=supportFragmentManager.findFragmentById(R.id.nav_host_fragment) as NavHostFragment
        bottom_navigation.setupWithNavController(transaction.navController)


    }




 }





