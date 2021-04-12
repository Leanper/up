package com.leanper.jetpackdemo.Arch.datastore

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.datastore.preferences.preferencesKey
import com.leanper.jetpackdemo.MyApplication
import com.leanper.jetpackdemo.R
import com.leanper.jetpackdemo.base.BaseFragment
import kotlinx.android.synthetic.main.fragment_prefrence_data_store.*
import kotlinx.coroutines.*


class PrefrenceDataStoreFragment : BaseFragment(), View.OnClickListener, CoroutineScope by MainScope() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

    }

    override fun getLayoutId(): Int {
        return R.layout.fragment_prefrence_data_store
    }



    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        bt_sure.setOnClickListener(this)
        tv_shoewInfo.setOnClickListener(this)



    }


    override  fun onClick(v: View?) {
    when(v){
//        bt_sure->{
//            launch (Dispatchers.Main){
//                StoreFactory.providePreferencesDataStore().putString(MyPreferencesKeys.KEY_NAME,et_putData.text.toString())
//            }
//        }
//        tv_shoewInfo->{
//            launch(Dispatchers.Main){
//                var name=StoreFactory.providePreferencesDataStore().getString(MyPreferencesKeys.KEY_NAME)
//                tv_shoewInfo.text= name.toString()
//            }
//
//        }

    }

    }

    override fun onDestroy() {
        cancel()
        super.onDestroy()
    }


}