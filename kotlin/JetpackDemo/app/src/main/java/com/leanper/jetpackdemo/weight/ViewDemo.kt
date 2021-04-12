package com.leanper.jetpackdemo.weight

import android.os.Bundle
import android.view.View
import androidx.navigation.fragment.findNavController
import com.leanper.jetpackdemo.R
import com.leanper.jetpackdemo.base.BaseFragment
import kotlinx.android.synthetic.main.fragment_viewdemo.*

class ViewDemo :BaseFragment(), View.OnClickListener {
    override fun getLayoutId(): Int {
       return   R.layout.fragment_viewdemo
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        views.setOnClickListener (this)
        watchface.setOnClickListener(this)
    }

    override fun onClick(v: View?) {
        when(v){
            views->findNavController().navigate(R.id.viewFragment1)
            watchface->findNavController().navigate(R.id.watchFaceFragment)
        }
    }
}