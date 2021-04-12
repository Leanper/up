package com.leanper.jetpackdemo.fragment

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.core.app.ActivityOptionsCompat
import androidx.databinding.DataBindingUtil
import androidx.navigation.ActivityNavigator
import androidx.navigation.fragment.findNavController
import com.leanper.jetpackdemo.R
import com.leanper.jetpackdemo.base.BaseFragment
import com.leanper.jetpackdemo.databinding.FragmentArchBinding
import kotlinx.android.synthetic.main.fragment_arch.*


data class ArchTypeBean(var Navagation:String,var lifeData:String)

class ArchFragment : BaseFragment(), View.OnClickListener {
    override fun getLayoutId(): Int {

        return R.layout.fragment_arch
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?):
            View? {
        return super.onCreateView(inflater, container, savedInstanceState)

    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        init()
    }

    override fun initView(rootview: View?, container: ViewGroup?, inflater: LayoutInflater) {
        super.initView(rootview, container, inflater)
//        var archFragmentBind:FragmentArchBinding= DataBindingUtil.inflate(inflater, R.layout.fragment_arch, container, false)
//        archFragmentBind.typebean=ArchTypeBean("Navigation","LiftData")
    }

   private fun init(){
       TV_viewbinding.setOnClickListener(this)
       TV_navigation.setOnClickListener(this)
       TV_dataStore.setOnClickListener(this)
       TV_room.setOnClickListener(this)
       TV_Paging.setOnClickListener(this)

        //https://blog.csdn.net/wenyingzhi/article/details/96833327
       //https://blog.csdn.net/u010221508/article/details/107912661
       //https://www.jianshu.com/p/b74ce3e1bb6f









    }

    override fun onClick(v: View?) {

        when(v){
            TV_navigation->{

                var pair =androidx.core.util.Pair<View,String>(iv_carsmall,"carsmall")

                var options=ActivityOptionsCompat.makeSceneTransitionAnimation(requireActivity(),pair)

                var extral=ActivityNavigator.Extras.Builder().setActivityOptions(options).build()

                findNavController().navigate(R.id.navigationActivity,null,null,extral)
            }

            TV_dataStore-> findNavController().navigate(R.id.dataStoreActivity)

            TV_viewbinding->  findNavController().navigate(R.id.viewBindingFragment)
            TV_room->  findNavController().navigate(R.id.roomFragment)
            TV_Paging->  findNavController().navigate(R.id.pagingDemoFragment)
        }
    }


}


