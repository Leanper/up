package com.leanper.jetpackdemo.Arch.databinding

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import com.leanper.jetpackdemo.R
import com.leanper.jetpackdemo.base.BaseFragment


class ViewBindingFragment : BaseFragment() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
    }

    override fun getLayoutId(): Int {

        return R.layout.fragment_view_binding
    }

    override fun initView(rootview: View?, container: ViewGroup?, inflater: LayoutInflater) {
        super.initView(rootview, container, inflater)

    }


}