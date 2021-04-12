package com.leanper.jetpackdemo.ui.ui.layouts

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.leanper.jetpackdemo.R
import kotlinx.android.synthetic.main.activity_layout.*

class LayoutActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_layout)
        line1.setOnClickListener {
//            Navigation.findNavController(it).navigate(R.id.action_layoutActivity_to_layout2Activity)
        }

    }
}


