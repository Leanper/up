package com.leanper.myview.fragment

import android.os.Bundle
import android.view.View
import com.leanper.myview.R
import kotlinx.android.synthetic.main.fragment_bililoading.*

class BilibiliLoadingFragment :BaseFragment() {
    override fun getLayoutId(): Int {
        return R.layout.fragment_bililoading
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        bilibi.startAnima()

    }
}