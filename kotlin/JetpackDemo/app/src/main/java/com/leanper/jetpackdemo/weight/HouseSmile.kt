package com.leanper.jetpackdemo.weight

import android.content.Context
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.Path
import android.util.AttributeSet
import android.util.Log
import android.view.View
import com.leanper.jetpackdemo.R

class HouseSmile :View {

    /*
    * 定义变量
    * */
    private var strokeValue:Int?=0
    private var outcolor:Int?=0
    private var mouthcolor:Int?=0
    private var eyecolor:Int?=0
    private var mOutPaint:Paint?=null
    private var mEyePaint:Paint?=null
    private var mMouthPaint:Paint?=null

    private var TAG="HouseSmile"

    constructor(context: Context?) : this(context,null)
    constructor(context: Context?, attrs: AttributeSet?) : this(context, attrs,0)
    constructor(context: Context?, attrs: AttributeSet?, defStyleAttr: Int) : super(context, attrs, defStyleAttr){

        initAttrs(context, attrs)
        initPaint()

    }

    /*
    * 初始化自定义属性
    * */
    private fun initAttrs(context: Context?, attrs: AttributeSet?) {
        var a = context?.obtainStyledAttributes(attrs, R.styleable.HouseSmile)
         eyecolor = a?.getColor(R.styleable.HouseSmile_eyeColor, resources.getColor(R.color.palegreen))
         mouthcolor = a?.getColor(R.styleable.HouseSmile_mouthColor, resources.getColor(R.color.palegreen))
         outcolor = a?.getColor(R.styleable.HouseSmile_outerColor, resources.getColor(R.color.palegreen))
         strokeValue = a?.getInt(R.styleable.HouseSmile_strokeValue, -1)

        Log.i(TAG,"eyecolor-$eyecolor")
        Log.i(TAG,"outcolor-$outcolor")
        Log.i(TAG,"mouthcolor-$mouthcolor")
        Log.i(TAG,"strokeValue-$strokeValue")
        a?.recycle()
    }

    /*
    * 初始化画笔
    * */
    private fun initPaint() {
        //外部画笔
        mOutPaint=Paint()
        mOutPaint?.strokeWidth=strokeValue!!.toFloat()
        mOutPaint?.isAntiAlias=true
        mOutPaint?.strokeCap=Paint.Cap.ROUND
        outcolor?.let { mOutPaint?.setColor(it) }
        //眼睛画笔
         mEyePaint=Paint()
        mEyePaint?.strokeWidth=strokeValue!!.toFloat()
        mEyePaint?.isAntiAlias=true
        mEyePaint?.strokeCap=Paint.Cap.ROUND
        eyecolor?.let { mEyePaint?.setColor(it) }
        //眼睛画笔
         mMouthPaint=Paint()
        mMouthPaint!!.strokeWidth=strokeValue!!.toFloat()
        mMouthPaint?.isAntiAlias=true
        mMouthPaint?.strokeCap=Paint.Cap.ROUND
        mouthcolor?.let { mMouthPaint?.setColor(it) }

    }

    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {

        var widthSize=MeasureSpec.getSize(widthMeasureSpec)
        var heightSize=MeasureSpec.getSize(heightMeasureSpec)

        var widthTargetSize=widthSize-paddingLeft+paddingRight
        var heightTargetSize=heightSize-paddingBottom-paddingTop

        //宽度取小值
        var targetSize= Math.min(widthTargetSize,heightTargetSize)
        Log.i(TAG,"Tagetsize-$targetSize")
        Log.i(TAG,"widthTargetSize-$widthTargetSize")
        Log.i(TAG,"heightTargetSize-$heightTargetSize")
        setMeasuredDimension(targetSize,targetSize)
    }


    override fun onDraw(canvas: Canvas?) {

        //获取一半的路径
        var mywdith=width*0.8f
        var radius=width/2*0.8f
        //获取一半的路径
        var eyelocation=radius/2
        Log.i(TAG,"半径为$radius")
        Log.i(TAG,"eyelocation为$eyelocation")


        //画屋顶
        canvas?.drawLine(radius,0f,0f,radius,mOutPaint!!)
        canvas?.drawLine(radius,0f,mywdith,radius,mOutPaint!!)
         //画底座
        canvas?.drawLine(0f,radius+10f,0f,mywdith,mOutPaint!!)
        canvas?.drawLine(0f,mywdith,mywdith,mywdith,mOutPaint!!)
        canvas?.drawLine(mywdith,radius,mywdith,mywdith,mOutPaint!!)

        var path=Path()
        canvas?.drawPath(path,mOutPaint!!)




    }

}