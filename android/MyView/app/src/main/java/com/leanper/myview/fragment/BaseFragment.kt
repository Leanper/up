package com.leanper.myview.fragment

import android.os.Bundle
import android.text.Layout
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.databinding.DataBindingUtil
import androidx.fragment.app.Fragment

abstract class BaseFragment :Fragment() {
    abstract fun getLayoutId():Int

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {

        var rootview=inflater.inflate(getLayoutId(),container,false)
        return rootview
    }


}