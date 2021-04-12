package com.leanper.jetpackdemo.Arch.datastore

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.annotation.Nullable
import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentPagerAdapter
import com.leanper.jetpackdemo.R
import com.leanper.jetpackdemo.base.BaseFragment
import kotlinx.android.synthetic.main.activity_data_store.*
import kotlinx.android.synthetic.main.toolbar_layout.*


class DataStoreFragment :BaseFragment(){

    private val tabs = arrayOf("photostore", "prefrencestore")

    override fun getLayoutId(): Int {
        return R.layout.activity_data_store
    }

    override fun initView(rootview: View?, container: ViewGroup?, inflater: LayoutInflater) {
        super.initView(rootview, container, inflater)

        var myfragemts=mutableListOf<Fragment>()
        myfragemts.add(ProtoDataStoreFragment())
        myfragemts.add(PrefrenceDataStoreFragment())

        tablayout.addTab(tablayout.newTab())
        tablayout.addTab(tablayout.newTab())

        vp_datastore.adapter=(object : FragmentPagerAdapter(requireActivity().supportFragmentManager, BEHAVIOR_RESUME_ONLY_CURRENT_FRAGMENT) {
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
        tv_toolbar_title.setText("shujuku ")
        tv_toolbar_title.setOnClickListener {
            requireActivity().finish()
        }

    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)


    }


}