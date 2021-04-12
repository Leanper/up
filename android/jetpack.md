#  jetpack知识

## UI

---
+ ### layout

#### constraintlayout（https://www.jianshu.com/p/17ec9bd6ca8a）

    （约束布局ConstraintLayout 是一个ViewGroup，可以在Api9以上的Android系统使用它，它的出现主要是为了解决布局嵌套过多的问题，以灵活的方式定位和调整小部件。从 Android Studio 2.3 起，官方的模板默认使用 ConstraintLayout）
    
    解决嵌套的ui控件
    

+ layout_constraintLeft_toRightOf="@+id/TextView1 ， 把TextView2的左边约束到TextView1的右边。及吧控件2放到1的右边
    + 类似还有layout_constraintLeft_toLeftOf
    layout_constraintLeft_toRightOf
    layout_constraintRight_toLeftOf
    layout_constraintRight_toRightOf
    layout_constraintTop_toTopOf
    layout_constraintTop_toBottomOf
    layout_constraintBottom_toTopOf
    layout_constraintBottom_toBottomOf
    layout_constraintStart_toEndOf
    layout_constraintStart_toStartOf
    layout_constraintEnd_toStartOf
    layout_constraintEnd_toEndOf=“parent”//在最底部 parent父控件 id/tv1 子控件位置


+ layout_constraintBaseline_toBaselineOf 值文字基线对齐 如下图
![enter description here][1]

---

+ 角度定位
    + app:layout_constraintCircle="@id/tv_c"//依那个控件为圆心 依控件中点为
      app:layout_constraintCircleAngle="120"//角度
    app:layout_constraintCircleRadius="@dimen/qb_px_150"//距离 两个控件中心的距离

---

+ 边距margin
    + android:layout_marginStart //TODO
        android:layout_marginEnd
        android:layout_marginLeft
        android:layout_marginTop
        android:layout_marginRight
        android:layout_marginBottom

    + goneMargin其他控件消失的时候 该控件的边距
        layout_goneMarginStart
        layout_goneMarginEnd
        layout_goneMarginLeft
        layout_goneMarginTop
        layout_goneMarginRight
        layout_goneMarginBottom
        
    + 居中
        +  通过left_to_left等上下左右四个方向固定父控件
         app:layout_constraintBottom_toBottomOf="parent"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="parent"
+ 尺寸约束

    + 控件的高度或宽度为wrap_content时, 设定最大宽高度
        android:minWidth 最小的宽度
        android:minHeight 最小的高度
        android:maxWidth 最大的宽度
        android:maxHeight 最大的高度


    + 官方不建议使用match_parent 可以使用0dp(match_parent)代替 结合           app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toRightOf="parent" 从而达到不满全屏
    原因：子控件宽高度会失效
  
  ---
  
    + 当宽高有至少一个设置为0dp之后 可以通过        app:layout_constraintDimensionRatio="2:1"设置宽高比
    除此之外，在设置宽高比的值的时候，还可以在前面加W或H，分别指定宽度或高度限制。 例如：
    app:layout_constraintDimensionRatio="H,2:3"指的是 高:宽=2:3
    app:layout_constraintDimensionRatio="W,2:3"指的是 宽:高=2:3


+ 链

---

+ Guideline
    + orientation 垂直水平方向设定
    + layout_constraintGuide_begin 开始位置
    + layout_constraintGuide_end  结束位置

+ 辅助工具
    + Optimizer
        + 当我们使用 MATCH_CONSTRAINT 时，ConstraintLayout 将对控件进行 2 次测量，ConstraintLayout在1.1中可以通过设置 layout_optimizationLevel 进行优化，可设置的值有：
        none：无优化
        standard：仅优化直接约束和屏障约束（默认）
        direct：优化直接约束
        barrier：优化屏障约束
        chain：优化链约束
        dimensions：优化尺寸测量
    + Barrier
         + 假设有3个控件ABC，C在AB的右边，但是AB的宽是不固定的，这个时候C无论约束在A的右边或者B的右边都不对。当出现这种情况可以用Barrier来解觉Barrier可以在多个控件的一侧建立一个屏障
         

<TextView
        android:id="@+id/TextView1"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content" />

    <TextView
        android:id="@+id/TextView2"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        app:layout_constraintTop_toBottomOf="@+id/TextView1" />

    <android.support.constraint.Barrier
        android:id="@+id/barrier"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        app:barrierDirection="right"
        app:constraint_referenced_ids="TextView1,TextView2" />

    <TextView
        android:id="@+id/TextView3"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        app:layout_constraintLeft_toRightOf="@+id/barrier" />
        
        //
        app:barrierDirection为屏障所在的位置，可设置的值有：bottom、end、left、right、start、top
        app:constraint_referenced_ids为屏障引用的控件，可设置多个(用“,”隔开) textview3位置不能通过barrier设置

+ Group （可以把多个控件归为一组，方便隐藏或显示一组控件）
    
        <android.support.constraint.Group
        android:id="@+id/group"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:visibility="invisible"
        app:constraint_referenced_ids="TextView1,TextView3" />
同时设置显示与否


+ PlaceHolder

    
    <android.support.constraint.Placeholder
        android:id="@+id/placeholder"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        app:content="@+id/textview"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

    <TextView
        android:id="@+id/textview"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:background="#cccccc"
        android:padding="16dp"
        android:text="TextView"
        android:textColor="#000000"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="parent" />
        
        
### Fragment
https://blog.csdn.net/weixin_34096182/article/details/88033484
https://juejin.cn/post/6844903769486917645
https://blog.csdn.net/fly_with_24/article/details/104778835


---
## Behavior

---
## Foundation


---
## Architecture

+ ### Navigation

+ ### Databinding
    + 介绍
        + 首先将布局文件转化 选择布局 选择 convert to data binding layout
        

        <!--生成布局-->
      <layout xmlns:android="http://schemas.android.com/apk/res/android"
        xmlns:app="http://schemas.android.com/apk/res-auto">
        <data>
        <variable name="user" type="com.example.User"/>
        </data>
        <正常的布局文件>
     </layout>

       
       

+ 在data结点设置属性 name是引用的名字 type是bean包数据地址 使用@{}引入数据实体
+ 在Activity中直接通过 ActivityMainBinding mainBinding = DataBindingUtil
            .setContentView(this, R.layout.activity_main);mainBinding.setChapter(null);
List<String> datas = new ArrayList<>();
datas.add("jetpack");
mainBinding.setDatas(datas);
mainBinding.setIndex(0);


+ fragment
+ ### 架构
    + MVC
        + 
        + ![enter description here][2]
        + ![enter description here][3]
    + MVP
        + ![enter description here][4]
        + MVC套在Android上不好。VC的代码会越来越多，如果要处理复杂的逻辑，Activity的代码上千上行。于是大家开始剥离VC里的代码。
        这个用起来爽了很多，Activity的代码量也没这么多了。
        大量的逻辑代码抽取到了Presenter层。
        + 
        + 在MVP架构中，我们设计到的内容是调用逻辑层的方法和更新UI，这是最简单的。问题点就是：怎么调用逻辑层的方法呢？怎么通知UI更新呢？
        View层持有Presenter层的引用或者通过管理类管理Presenter，总之View可以直接拿到Presenter，这样子，View就可以调用Presenter里的方法了。比如说Presenter你给我获取一个这个页面的分类。
        Presenter层如何更新UI呢？当View层去获取/创建Presenter的时候，把接口给到Presenter，比如说Presenter层获取到分类以后，通过接口更新UI即可。这样子，我们这个来回就完事了。Presenter层则通过Model层去拿数据
        + ![enter description here][5]
+ MvvM



---

+ ### room
    + 使用指南
        + 首先添加依赖
              implementation 'androidx.room:room-runtime:2.2.5'
             annotationProcessor 'androidx.room:room-compiler:2.2.5'
             kapt "androidx.room:room-compiler:2.2.5"
            在App build.gradle plugins中添加     id 'kotlin-kapt' 否则报错
        + 创建一个entiry 实体类对应各个sql表中字段


    //USERINFO为数据库表名
    @Entity(tableName = "USERINFO ")
    class UserInfo {
    // 主键，是否自增长
    @PrimaryKey(autoGenerate = true)
    var id = 0

    // 表中字段，表中字段名
    @ColumnInfo(name = "name")
    var name: String? = null
    }
    
+ 创建dao层


    @Dao
    interface UserInfoDao {

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    fun insert(vararg Userinfo: UserInfo?)

    @Delete
    fun delete(Userinfo: UserInfo?)

    @Update
    fun update(Userinfo: UserInfo?)

    @Query("SELECT * FROM `USERINFO `")
    fun getAll(): List<UserInfo?>?

    @Query("SELECT  * FROM `USERINFO `  LIMIT 1")
    fun getFirst(): UserInfo?



    @Query("SELECT * FROM `userinfo ` WHERE name = :name")
    fun findByName(name: String?): List<UserInfo?>?

    @Query("SELECT * FROM `userinfo ` WHERE id in (:ids)")
    fun findByIds(ids: IntArray?): List<UserInfo?>?
    }



+ 然后创建接口


    @Database(entities = [UserInfo::class], version = 1)
    abstract class UserInfoDataBase : RoomDatabase() {
    abstract fun userInfoDao(): UserInfoDao?
    }


实例化
    +  update必须需根据主键修改
     
    

      var room = Room.databaseBuilder(requireActivity(), OrderInfoBase::class.java, "orderinfo")
            .allowMainThreadQueries().build()
            
    
        
              
         

    


  [1]: ./images/1607591195819.jpg "1607591195819.jpg"
  [2]: ./images/1608258026737.jpg "1608258026737.jpg"
  [3]: ./images/1608258370360.jpg "1608258370360.jpg"
  [4]: ./images/1608258878525.jpg "1608258878525.jpg"
  [5]: ./images/1608259005953.jpg "1608259005953.jpg"