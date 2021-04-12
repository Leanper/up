//package com.leanper.jetpackdemo.Arch.room.entity
//
//import androidx.room.ColumnInfo
//import androidx.room.Entity
//import androidx.room.PrimaryKey
//
////USERINFO为数据库表名
//@Entity(tableName = "USERINFO")
//class UserInfo {
//    // 主键，是否自增长
//    @PrimaryKey(autoGenerate = true)
//    var id = 0
//
//    // 表中字段，表中字段名
//    @ColumnInfo(name = "name")
//    var name: String? = null
//
//    @ColumnInfo()
//    var sex:Int=0
//
//    @ColumnInfo()
//    var age:Int=0
//
//    @ColumnInfo()
//    var classroom:String?=null
//
//
//    override fun toString(): String {
//        return "UserInfo{" +
//                "id=" + id +
//                ", name='" + name + '\'' +
//                ", classroom='" + classroom + '\'' +
//                ", age='" + age + '\'' +
//                ", sex='" + sex + '\''
//    }
//
//
//}