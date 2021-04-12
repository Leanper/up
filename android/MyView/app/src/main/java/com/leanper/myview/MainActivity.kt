package com.leanper.myview

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.fragment.app.FragmentPagerAdapter
import androidx.navigation.fragment.NavHostFragment
import androidx.navigation.ui.setupWithNavController
import com.leanper.myview.databinding.ActivityMainBinding


class MainActivity : AppCompatActivity() {
//https://blog.csdn.net/guolin_blog/article/details/43536355
       private var mainBinding:ActivityMainBinding?=null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
         mainBinding=ActivityMainBinding.inflate(layoutInflater)
        setContentView(mainBinding?.root)

        init()

    }

    private fun init() {
        //https://www.jianshu.com/p/630bb74a62b8

        mainBinding?.bottomNavigationView?.itemIconTintList =null
        var transaction=supportFragmentManager.findFragmentById(R.id.nav_host_fragment) as NavHostFragment
        mainBinding?.bottomNavigationView?.setupWithNavController(transaction.navController)

    }

}
