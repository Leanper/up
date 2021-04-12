package com.leanper.myview.fragment.animations

import android.animation.ValueAnimator
import android.os.Bundle
import android.view.View
import android.view.animation.LinearInterpolator
import com.leanper.myview.R
import com.leanper.myview.fragment.BaseFragment
import kotlinx.android.synthetic.main.fragment_valueanimator.*


/**
 * 创建日期：2021/1/19 8:40
 * @author Leanper
 * @version 1.0
 * 包名： com.leanper.myview.fragment.animations
 * 类说明：
 */

class ValueAnimatorFragment :BaseFragment(){
    override fun getLayoutId(): Int {
        return R.layout.fragment_valueanimator
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        tv1.setOnClickListener {
            val animator = ValueAnimator.ofFloat(0f, 1.0f)
            animator.duration = 3000
            animator.interpolator = LinearInterpolator()
            animator.start()
        }

    }

}