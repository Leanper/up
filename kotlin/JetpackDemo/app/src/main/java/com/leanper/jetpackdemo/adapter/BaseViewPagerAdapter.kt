package com.leanper.jetpackdemo.adapter

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.fragment.app.FragmentPagerAdapter
import androidx.fragment.app.FragmentStatePagerAdapter

class BaseViewPagerAdapter(fm: FragmentManager,var myFragmentList:List<Fragment>) : FragmentStatePagerAdapter(fm) {



    override fun getItem(position: Int): Fragment {
        return myFragmentList[position]
    }

    override fun getCount(): Int {

        return myFragmentList.size
    }
}