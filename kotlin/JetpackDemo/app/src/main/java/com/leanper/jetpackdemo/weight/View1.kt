package com.leanper.jetpackdemo.weight

import android.content.Context
import android.text.Editable
import android.util.AttributeSet
import android.util.Log
import android.view.LayoutInflater
import android.widget.Button
import android.widget.EditText
import android.widget.LinearLayout
import android.widget.Toast
import com.leanper.jetpackdemo.R

class View1 : LinearLayout {

    private var onNumValueListener: View1.onNumListener?=null
    private var mCurrentNum=0
    private var mjian:Button?=null
    private var mjia:Button?=null
    private var mShow:EditText?=null

    private var max=0
    private var min=0
    private var disable=true
    private var btColor=0
    private var step=5
    private var defaultValue=0

    constructor(context: Context): this(context,null){
    }

    constructor(context: Context, attributeSet: AttributeSet?):
            this(context, attributeSet,0){
    }

    constructor(context: Context, attributeSet: AttributeSet?, defStyleAttr: Int):
            super(context, attributeSet, defStyleAttr){


        initattrs(context, attributeSet)
    }
/*
* 初始化自定义控件属性
* */
    private fun initattrs(context: Context, attributeSet: AttributeSet?) {
        var a = context.obtainStyledAttributes(attributeSet, R.styleable.InputValue)
         max = a.getInt(R.styleable.InputValue_max, 0)
         min = a.getInt(R.styleable.InputValue_min, 0)
         step = a.getInt(R.styleable.InputValue_step, 1)
         defaultValue = a.getInt(R.styleable.InputValue_defaultValue, 0)
         disable = a.getBoolean(R.styleable.InputValue_disable, true)
         btColor = a.getColor(R.styleable.InputValue_btColor, 0)
        Log.i("TAG","max为$max")
        Log.i("TAG","min$min")
        Log.i("TAG","disable$disable")
        a.recycle()
    }


    init {
        initView()
        setUpEvent()
    }

    /*
    * 点击事件检测
    * */
    private fun setUpEvent() {

        mjia?.setOnClickListener {
            if(mCurrentNum<max){
                mCurrentNum+=step
                updatetext()
            }else{
                Toast.makeText(context,"超过最大值",Toast.LENGTH_LONG).show()
            }
        }
        mjian?.setOnClickListener {



            if(mCurrentNum>min){
                mCurrentNum-=step
                updatetext()
            }else{
                Toast.makeText(context,"小鱼最小值",Toast.LENGTH_LONG).show()
            }

        }
    }

    /*
    * 初始化控件
    * */
    private fun initView() {
        var view = LayoutInflater.from(context).inflate(R.layout.inputview_layout, this, false)
         mjia = view.findViewById<Button>(R.id.bt_jia)
         mjian = view.findViewById<Button>(R.id.bt_jian)
         mShow = view.findViewById<EditText>(R.id.et_show)

        addView(view)
    }



    fun getNum():Int{

        return mCurrentNum
    }

    fun setNum(mCurrentNum:Int){
        this.mCurrentNum=mCurrentNum
        updatetext()
    }

    /*
    * 更新数据
    * */
    fun updatetext(){
        if(onNumValueListener!=null){
            onNumValueListener?.NumChangeListener(mCurrentNum)
        }
        mShow?.text= Editable.Factory.getInstance().newEditable("$mCurrentNum")
    }


     fun setOnNumListener(onNumListener:onNumListener){
        this.onNumValueListener=onNumListener
    }

/*
* 暴漏接口 ，供外部调用
* */
    interface onNumListener{
        fun NumChangeListener(value:Int)
        fun maxListener(value:Int)
        fun minListener(value:Int)
    }



}