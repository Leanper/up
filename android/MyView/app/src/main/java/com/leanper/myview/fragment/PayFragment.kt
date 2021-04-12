package com.leanper.myview.fragment

import android.os.Bundle
import android.view.View
import com.leanper.myview.R
import com.leanper.myview.view.PayView
import kotlinx.android.synthetic.main.fragment_pay.*

class PayFragment:BaseFragment() {
    override fun getLayoutId(): Int {
        return R.layout.fragment_pay
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        btSuccess.setOnClickListener {
            if(payView.getStatus() != PayView.Status.LoadSuccess){
                payView.setStatus(PayView.Status.LoadSuccess);
                payView.startAnima();
            }
        }

        btFail.setOnClickListener {
            if(payView.getStatus() != PayView.Status.LoadFail){
                payView.setStatus(PayView.Status.LoadFail);
                payView.failAnima()
            }
        }
    }


}