package com.leanper.myview.fragment

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.navigation.fragment.findNavController
import com.leanper.myview.R
import kotlinx.android.synthetic.main.fragment_first.*

class PaintFragment:BaseFragment(), View.OnClickListener {
    override fun getLayoutId(): Int {

        return R.layout.fragment_first
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        tv_pay.setOnClickListener(this)
        tv_path.setOnClickListener(this)
        tv_bilibili.setOnClickListener(this)
        tv_arc.setOnClickListener(this)
        tv_loginbut.setOnClickListener(this)
        tv_partcleview.setOnClickListener(this)

    }

    override fun onClick(v: View?) {
        when(v){
            tv_pay->findNavController().navigate(R.id.payFragment)
            tv_path->findNavController().navigate(R.id.payFragment)
            tv_bilibili->findNavController().navigate(R.id.bilibiliLoadingFragment)
            tv_arc->findNavController().navigate(R.id.arcFragment)
            tv_loginbut->findNavController().navigate(R.id.loginButtonFragment)
            tv_partcleview->findNavController().navigate(R.id.partcleFragment)
        }
    }


}