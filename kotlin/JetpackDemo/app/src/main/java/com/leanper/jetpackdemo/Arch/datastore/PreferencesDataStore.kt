//package com.leanper.jetpackdemo.Arch.datastore
//
//import androidx.datastore.DataStore
//import androidx.datastore.preferences.Preferences
//import androidx.datastore.preferences.createDataStore
//import androidx.datastore.preferences.edit
//import com.leanper.jetpackdemo.MyApplication
//import com.leanper.jetpackdemo.`interface`.IDataStore
//import kotlinx.coroutines.flow.first
//import kotlinx.coroutines.flow.map
//
//
//class PreferencesDataStore : IDataStore {
//    // 指定名字
//    private val PREFERENCES_NAME = "Preferences_DataStore"
//    // 创建dataStore
//    var dataStore: DataStore<Preferences> = MyApplication.context.createDataStore(
//            name = PREFERENCES_NAME
//    )
//
//    override suspend fun putBoolean(key: Preferences.Key<Boolean>, value: Boolean) {
//
//        dataStore.edit { it[key] = value }
//    }
//
//    override suspend fun getBoolean(key: Preferences.Key<Boolean>): Boolean {
//        return dataStore.data.map { it[key]?:false }.first()
//    }
//
//    override suspend fun putInt(key: Preferences.Key<Int>, value: Int) {
//        dataStore.edit { it[key] = value }
//    }
//
//    override suspend fun getInt(key: Preferences.Key<Int>): Int {
//        return dataStore.data.map { it[key]?:0 }.first()
//    }
//
//    override suspend fun putLong(key: Preferences.Key<Long>, value: Long) {
//        dataStore.edit { it[key] = value }
//    }
//
//    override suspend fun getLong(key: Preferences.Key<Long>): Long {
//        return dataStore.data.map { it[key]?:0 }.first()
//    }
//
//    override suspend fun putDouble(key: Preferences.Key<Double>, value: Double) {
//        dataStore.edit { it[key] = value }
//    }
//
//    override suspend fun getDouble(key: Preferences.Key<Double>): Double{
//        return dataStore.data.map { it[key]?:0.0 }.first()
//    }
//
//    override suspend fun putFloat(key: Preferences.Key<Float>,value:Float) {
//        dataStore.edit { it[key] = value }
//    }
//
//    override suspend fun getFloat(key: Preferences.Key<Float>): Float {
//        return dataStore.data.map { it[key]?:0F }.first()
//    }
//
//    override suspend fun putString(key: Preferences.Key<String>, value: String) {
//        dataStore.edit { it[key] = value }
//    }
//
//    override suspend fun getString(key: Preferences.Key<String>): String {
//        return dataStore.data.map { it[key]?:"" }.first()
//    }
//
//
//}