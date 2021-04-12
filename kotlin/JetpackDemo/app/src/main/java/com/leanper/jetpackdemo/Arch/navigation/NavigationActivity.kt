package com.leanper.jetpackdemo.Arch.navigation

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.databinding.DataBindingUtil
import androidx.navigation.findNavController
import androidx.transition.TransitionInflater
import com.leanper.jetpackdemo.R
import kotlinx.android.synthetic.main.activity_navigation.*
import kotlinx.android.synthetic.main.toolbar_layout.*

class NavigationActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_navigation)
        window.setBackgroundDrawableResource(R.color.teal_200)

        init()
    }

    private fun init() {
        var transitionInflater= TransitionInflater.from(this).inflateTransition(R.transition.mytrans)

        tv_Navigation_show.setOnClickListener {
//            findNavController(R.id.tv_Navigation_show).navigate(R.id.navAnimationActivity)
        }
    }
}