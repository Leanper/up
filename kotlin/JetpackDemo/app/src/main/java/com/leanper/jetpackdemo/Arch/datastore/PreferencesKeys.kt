package com.leanper.jetpackdemo.Arch.datastore

import androidx.datastore.preferences.preferencesKey

/*
存储 DataStore的Key的类
* */
object MyPreferencesKeys {
    val KEY_COUNT = preferencesKey<Int>("key_count")
    val KEY_FLAG = preferencesKey<Boolean>("key_flag")
    val KEY_PRICE = preferencesKey<Float>("key_price")
    val KEY_NAME = preferencesKey<String>("key_name")
    val KEY_TIME = preferencesKey<Long>("key_time")
    val KEY_MONEY = preferencesKey<Double>("key_money")
}