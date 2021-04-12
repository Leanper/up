package com.leanper.jetpackdemo.fragment

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.navigation.fragment.findNavController
import com.leanper.jetpackdemo.R
import com.leanper.jetpackdemo.base.BaseFragment
import kotlinx.android.synthetic.main.fragment_ui.*

class UiFragment : BaseFragment(), View.OnClickListener {



    override fun getLayoutId(): Int {
    return R.layout.fragment_ui
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        views.setOnClickListener(this)
        layout.setOnClickListener(this)
    }
    override fun initView(rootview: View?, container: ViewGroup?, inflater: LayoutInflater) {
        super.initView(rootview, container, inflater)

    }

    override fun onClick(v: View?) {
        when(v){
            layout->findNavController().navigate(R.id.layoutActivity)
            views->findNavController().navigate(R.id.viewDemo)

        }
    }


}