package com.leanper.myview.fragment.animations

import android.os.Bundle
import android.view.View
import androidx.navigation.fragment.findNavController
import com.leanper.myview.R
import com.leanper.myview.fragment.BaseFragment
import kotlinx.android.synthetic.main.fragment_animations.*

class AnimationDemo :BaseFragment(), View.OnClickListener {
    override fun getLayoutId(): Int {
        return R.layout.fragment_animations
    }

    //https://blog.csdn.net/kmyhy/article/details/79129437


    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        tv_animator.setOnClickListener(this)
        tv_objector.setOnClickListener(this)
        tv_set.setOnClickListener(this)
    }

    override fun onClick(v: View?) {
        when(v){
            tv_animator->findNavController().navigate(R.id.valueAnimatorFragment)
            tv_objector->findNavController().navigate(R.id.objectAnimatorFragment)
            tv_set->findNavController().navigate(R.id.setAnimatorFragment)
        }
    }

}