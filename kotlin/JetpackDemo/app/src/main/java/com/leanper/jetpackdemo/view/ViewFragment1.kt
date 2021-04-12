package com.leanper.jetpackdemo.view

import android.os.Bundle
import android.util.Log
import android.view.View
import com.leanper.jetpackdemo.R
import com.leanper.jetpackdemo.base.BaseFragment
import com.leanper.jetpackdemo.weight.View1
import kotlinx.android.synthetic.main.fragment_view1.*

class ViewFragment1:BaseFragment(), View1.onNumListener {
    override fun getLayoutId(): Int {
        return R.layout.fragment_view1
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        tv1.setOnNumListener(this)

    }

    override fun NumChangeListener(value: Int) {
        Log.d("TAG","value为$value")
    }

    override fun maxListener(value: Int) {
        Log.d("TAG","最大值value为$value")

    }

    override fun minListener(value: Int) {
        Log.d("TAG","最小值value为$value")

    }
}