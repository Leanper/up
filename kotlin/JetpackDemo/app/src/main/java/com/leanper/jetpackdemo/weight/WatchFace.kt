package com.leanper.jetpackdemo.weight

import android.content.Context
import android.graphics.*
import android.util.AttributeSet
import android.util.Log
import android.view.View
import androidx.core.view.postDelayed
import com.leanper.jetpackdemo.R
import java.util.*
import kotlin.concurrent.schedule
import kotlin.concurrent.timerTask
import android.os.Handler as Handler2
import java.util.logging.Handler as Handler1

class WatchFace: View {

    private val TAG: String="WatchFace"
    private var hourcolor:Int? =null
    private var mincolor:Int?=null
    private var secondcolor:Int?=null
    private var watchbg:Int?=null
    private var mHourPaint:Paint?=null
    private var mMinPaint:Paint?=null
    private var mSecondPaint:Paint?=null
    private var mScalePaint:Paint?=null
    private var mScaleminPaint:Paint?=null
    private var bitmapbg:Bitmap?=null
    var Srcrect:Rect?=null
    var Decrect:Rect?=null
    var mCalendar:Calendar?=null
    var isUpdate=true

    constructor(context: Context): this(context,null){
    }

    constructor(context: Context, attributeSet: AttributeSet?):
            this(context, attributeSet,0){
    }

    constructor(context: Context, attributeSet: AttributeSet?, defStyleAttr: Int):
            super(context, attributeSet, defStyleAttr){


        initAttrs(context, attributeSet)
        initPaints()

        mCalendar=Calendar.getInstance()
    }


    /*
    * 初始化画笔
    * */
    private fun initPaints() {
         mHourPaint=Paint()
         mSecondPaint=Paint()
         mMinPaint=Paint()
         mScalePaint=Paint()
        mScaleminPaint=Paint()

        //设置颜色
         mHourPaint?.color=resources.getColor(R.color.red)
         mSecondPaint?.color=resources.getColor(R.color.yellow)
         mMinPaint?.color=resources.getColor(R.color.blue)
        mScalePaint?.color=resources.getColor(R.color.black)
        mScaleminPaint?.color=resources.getColor(R.color.gray)

        //抗锯齿
        mHourPaint?.isAntiAlias=true
        mMinPaint?.isAntiAlias=true
        mSecondPaint?.isAntiAlias=true
        mScalePaint?.isAntiAlias=true
        mScaleminPaint?.isAntiAlias=true

        //设置笔针的头
        mHourPaint?.strokeCap=Paint.Cap.ROUND
        mMinPaint?.strokeCap=Paint.Cap.ROUND
        mSecondPaint?.strokeCap=Paint.Cap.ROUND
        mScalePaint?.strokeCap=Paint.Cap.ROUND
        mScaleminPaint?.strokeCap=Paint.Cap.ROUND

        //设置笔针的头
        mHourPaint?.strokeWidth=5f
        mMinPaint?.strokeWidth=4f
        mSecondPaint?.strokeWidth=3f
        mScalePaint?.strokeWidth=3f
        mScaleminPaint?.strokeWidth=2f



    }

    /*
    * 初始化属性
    * */
    private fun initAttrs(context: Context,attributeSet: AttributeSet?) {
        var a = context.obtainStyledAttributes(attributeSet,R.styleable.WatchFace)
         hourcolor = a.getColor(R.styleable.WatchFace_hourcolor, resources.getColor(R.color.black))
         mincolor = a.getColor(R.styleable.WatchFace_mincolor, resources.getColor(R.color.black))
         secondcolor = a.getColor(R.styleable.WatchFace_secondcolor, resources.getColor(R.color.black))
         watchbg = a.getResourceId(R.styleable.WatchFace_watchbg, -1)


        Log.i(TAG,"bitmapgbg-->$watchbg")
        Log.i(TAG,"mincolor-->$mincolor")
        Log.i(TAG,"hourcolor-->$hourcolor")
        Log.i(TAG,"secondcolor-->$secondcolor")
        if(watchbg!=-1){
            bitmapbg=BitmapFactory.decodeResource(resources, this.watchbg!!)

        }

        a.recycle()
    }

    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {


        var widthSize=MeasureSpec.getSize(widthMeasureSpec)
        var heightSize=MeasureSpec.getSize(heightMeasureSpec)

        var widthTargetSize=widthSize-paddingLeft+paddingRight
        var heightTargetSize=heightSize-paddingBottom-paddingTop

        //宽度取小值
        var targetSize= Math.min(widthTargetSize,heightTargetSize)
       setMeasuredDimension(targetSize,targetSize)

        initRect()
    }


    /*
   * 创建举行
   * */
    private fun initRect() {
        //源坑
        Srcrect=Rect()
        Srcrect?.left=0
        Srcrect?.top=0
        Srcrect?.right= bitmapbg?.width
        Srcrect?.bottom=bitmapbg?.height

        //目标坑
        Decrect=Rect()
        Decrect?.left=0
        Decrect?.top=0
        Decrect?.right=measuredWidth
        Decrect?.bottom=measuredHeight


    }


    override fun onDraw(canvas: Canvas?) {
        //时针长度
        var hourlength = width / 2 * 0.5
        //时针长度
        var minlength = width / 2 * 0.6
        //时针长度
        var secondlength = width / 2 * 0.7
        //获取当前时间
        mCalendar?.timeInMillis=System.currentTimeMillis()
        //画刻度
        drawScale(canvas)
        drawTime(canvas, hourlength, minlength, secondlength)


    }

    private fun drawTime(canvas: Canvas?, hourlength: Double, minlength: Double, secondlength: Double) {
        canvas?.save()
        //        canvas?.drawBitmap(bitmapbg!!,Srcrect,Decrect!!,mHourPaint)

        //半径
        var radiu = width / 2
        //绘制时针
        var hourValue = mCalendar?.get(Calendar.HOUR)
        var minValue = mCalendar?.get(Calendar.MINUTE)
        var SecondValue = mCalendar?.get(Calendar.SECOND)

        var hourOffSetRotate = minValue!! / 2
        var hourRotate = hourValue!! * 30 + hourOffSetRotate
        canvas?.rotate(hourRotate.toFloat(), radiu.toFloat(), radiu.toFloat())
        canvas?.drawLine(radiu.toFloat(), radiu.toFloat() - hourlength.toFloat(), radiu.toFloat(), radiu.toFloat(), mHourPaint!!)
        canvas?.restore()
        //绘制分针
        canvas?.save()
        var minOffSetRotate = minValue * 6
        canvas?.rotate(minOffSetRotate.toFloat(), radiu.toFloat(), radiu.toFloat())
        canvas?.drawLine(radiu.toFloat(), radiu.toFloat() - minlength.toFloat(), radiu.toFloat(), radiu.toFloat(), mMinPaint!!)
        canvas?.restore()
        //绘制秒针
        canvas?.save()
        var SecondOffSetRotate = SecondValue?.times(6)
        canvas?.rotate(SecondOffSetRotate!!.toFloat(), radiu.toFloat(), radiu.toFloat())
        canvas?.drawLine(radiu.toFloat(), radiu.toFloat() - secondlength.toFloat(), radiu.toFloat(), radiu.toFloat(), mSecondPaint!!)
        canvas?.restore()
    }

    private fun drawScale(canvas: Canvas?) {
        //半径
        var radiu = width / 2
        //内圈半径
        var innerC = width / 2 * 0.8
        //内圈半径
        var OuterC = width / 2 * 0.9


        //           绘制指针方法一
        //            for (index in 0..12){
        //                var th= index*Math.PI*2/12
        //               //获取内圈个点坐标
        //                var innerB=Math.cos(th)*innerC
        //                var innerX=height/2-innerB
        //                var innerA=Math.sin(th)*innerC
        //                var innerY=width/2+innerA
        //               //获取外圈个点坐标
        //                var outerB=Math.cos(th)*OuterC
        //                var outerX=height/2-outerB
        //                var outerA=Math.sin(th)*OuterC
        //                var outerY=width/2+outerA
        //
        //                mScalePaint?.let { canvas?.drawLine(innerX.toFloat(), innerY.toFloat(), outerX.toFloat(), outerY.toFloat(), it) }
        //
        //            }

        canvas?.drawCircle(radiu.toFloat(), radiu.toFloat(), 5f, mScalePaint!!)
        //绘制刻度方法二 绘制时针
        canvas?.save()
        for (index in 1..12) {
            canvas?.drawText(index.toString(),
                    radiu.toFloat() - OuterC.toFloat()-10,
                    radiu.toFloat() - innerC.toFloat()-10,mSecondPaint!!)
            canvas?.drawLine(radiu.toFloat(), radiu.toFloat() - OuterC.toFloat(), radiu.toFloat(), radiu.toFloat() - innerC.toFloat(), mScalePaint!!)
            canvas?.rotate(30F, radiu.toFloat(), radiu.toFloat())
        }

        canvas?.restore()



        //绘制分针
        canvas?.save()
        for (index in 1..60) {
            canvas?.drawLine(
                    radiu.toFloat(),
                    radiu.toFloat() - OuterC.toFloat(),
                    radiu.toFloat(),
                    radiu.toFloat() - innerC.toFloat(),
                    mScaleminPaint!!)

            canvas?.rotate(6F, radiu.toFloat(), radiu.toFloat())
        }

        canvas?.restore()
    }

    override fun onAttachedToWindow() {
        super.onAttachedToWindow()

        var mStartVideoHandler: Handler2=Handler2()

        var mStartVideoRunnable: Runnable =object: Runnable {

            override fun run() {
                if(isUpdate){
                    invalidate()
                    mStartVideoHandler.postDelayed(this,1000)

                }else{
                    removeCallbacks(this)
                }

            }

        }

        mStartVideoRunnable.run()






    }

    override fun onDetachedFromWindow() {
        super.onDetachedFromWindow()
        this.isUpdate=false
    }

}

