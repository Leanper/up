//package com.leanper.jetpackdemo.Arch.room.dao
//
//import androidx.room.*
//import com.leanper.jetpackdemo.Arch.room.entity.UserInfo
//
//
//@Dao
//interface UserInfoDao {
//
//    @Insert(onConflict = OnConflictStrategy.REPLACE)
//    fun insert(vararg Userinfo: UserInfo.UserInfo?)
//
//    @Delete
//    fun delete(Userinfo: UserInfo?)
//
//    @Update
//    fun update(Userinfo: UserInfo?)
//
//    @Query("SELECT * FROM `USERINFO `")
//    fun getAll(): List<UserInfo?>?
//
//    @Query("SELECT  * FROM `USERINFO `  LIMIT 1")
//    fun getFirst(): UserInfo?
//
//
//
//    @Query("SELECT * FROM `userinfo ` WHERE name = :name")
//    fun findByName(name: String?): List<UserInfo?>?
//
//    @Query("SELECT * FROM `userinfo ` WHERE id in (:ids)")
//    fun findByIds(ids: IntArray?): List<UserInfo?>?
//}