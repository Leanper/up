package com.leanper.myview.fragment

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.databinding.DataBindingUtil
import androidx.fragment.app.Fragment
import com.leanper.myview.R
import kotlinx.android.synthetic.main.fragment_second.*

//https://www.jianshu.com/p/f64c3cd25f67
class PathFragment: BaseFragment() {
    override fun getLayoutId(): Int {
        return R.layout.fragment_second
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        pathdemo_1.start()

    }




}