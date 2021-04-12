package com.leanper.jetpackdemo.fragment

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import com.leanper.jetpackdemo.R
import com.leanper.jetpackdemo.base.BaseFragment


class FoundationFragment : BaseFragment() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
    }

    override fun getLayoutId(): Int {

        return R.layout.fragment_foundation
    }


}