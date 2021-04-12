package com.leanper.jetpackdemo.Arch.datastore

import android.R.id.tabs
import android.os.Bundle
import android.view.MotionEvent
import android.view.View
import android.widget.TabHost
import androidx.annotation.Nullable
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentPagerAdapter
import com.leanper.jetpackdemo.R
import kotlinx.android.synthetic.main.activity_data_store.*
import kotlinx.android.synthetic.main.toolbar_layout.*


class DataStoreActivity : AppCompatActivity(){
    private val tabs = arrayOf("photostore", "prefrencestore")

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_data_store)

        init()
    }

    private fun init() {

        var myfragemts=mutableListOf<Fragment>()
        myfragemts.add(ProtoDataStoreFragment())
        myfragemts.add(PrefrenceDataStoreFragment())

        tablayout.addTab(tablayout.newTab())
        tablayout.addTab(tablayout.newTab())

       vp_datastore.adapter=(object : FragmentPagerAdapter(supportFragmentManager, BEHAVIOR_RESUME_ONLY_CURRENT_FRAGMENT) {
            override fun getItem(position: Int): Fragment {
                return myfragemts.get(position)
            }

            override fun getCount(): Int {
                return myfragemts.size
            }

            @Nullable
            override fun getPageTitle(position: Int): CharSequence? {
                return tabs.get(position)
            }
        })

        tablayout.setupWithViewPager(vp_datastore)
        tv_toolbar_title.setText("datastore")
        tv_toolbar_title.setOnClickListener {
            finish()
        }
    }



}

