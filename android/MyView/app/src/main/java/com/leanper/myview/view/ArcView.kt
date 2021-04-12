package com.leanper.myview.view

import android.content.Context
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.RectF
import android.util.AttributeSet
import android.view.View
import com.leanper.myview.R


/**
 * 创建日期：2021/1/27 11:32
 * @author Leanper
 * @version 1.0
 * 包名： com.leanper.myview.view
 * 类说明：
 */
class ArcView: View {

    private var textColor:Int=0
    private var innerColor:Int=0
    private var outerColor:Int=0
    private var textInfo:String="1"
    private var textSize:Int=0
    private var textWidth:Int=0
    private var mOuterPiant:Paint?=null
    private var mInnerPiant:Paint?=null
    private var mTextPiant:Paint?=null

    constructor(context: Context?) : this(context,null)
    constructor(context: Context?, attrs: AttributeSet?) : this(context, attrs,0)


    constructor(context: Context?, attrs: AttributeSet?, defStyleAttr: Int) : super(
            context, attrs, defStyleAttr){
        initattrs(context)

        initPaint()
    }



    private fun initPaint() {
         mInnerPiant=Paint()
        mInnerPiant.let {
            mInnerPiant!!.isAntiAlias=true
            mInnerPiant!!.setColor(innerColor)
            mInnerPiant!!.strokeCap=Paint.Cap.ROUND
            mInnerPiant!!.style=Paint.Style.STROKE
            it?.strokeWidth=3f

        }


         mOuterPiant=Paint()
        mOuterPiant!!.isAntiAlias=true
        mOuterPiant!!.setColor(outerColor)
        mOuterPiant!!.strokeCap=Paint.Cap.ROUND
        mOuterPiant!!.style=Paint.Style.STROKE
        mOuterPiant?.strokeWidth=3f

         mTextPiant=Paint()
        mTextPiant!!.isAntiAlias=true
        mTextPiant!!.setColor(textColor)
        mTextPiant!!.strokeCap=Paint.Cap.ROUND
        mTextPiant!!.style=Paint.Style.STROKE
        mTextPiant!!.strokeWidth=textWidth.toFloat()




    }

    private fun initattrs(context: Context?) {
        var a = context?.obtainStyledAttributes(R.styleable.ArcView)
        a?.let {
            textColor = it.getColor(R.styleable.ArcView_textColor, resources.getColor(R.color.black))
            innerColor = it.getColor(R.styleable.ArcView_innerColor, resources.getColor(R.color.black))
            outerColor = it.getColor(R.styleable.ArcView_outerColor, resources.getColor(R.color.black))
            textInfo = it.getString(R.styleable.ArcView_textInfo).toString()
            textSize = it.getDimension(R.styleable.ArcView_textSize, 3f).toInt()
            textWidth = it.getDimension(R.styleable.ArcView_textWidth, 4f).toInt()


        }
        a?.recycle()
    }


    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec)
        var width=MeasureSpec.getSize(widthMeasureSpec)
        var height=MeasureSpec.getSize(heightMeasureSpec)
        setMeasuredDimension(width,height)
    }

    override fun onDraw(canvas: Canvas?) {
        super.onDraw(canvas)
        val rectF = RectF(width / 2f, width / 2f, width - textWidth / 2f, height - textWidth/ 2f)
        canvas?.drawArc(rectF, 135f, 270f, false, mInnerPiant!!)
        canvas?.drawArc(rectF, 135f,  270f, false, mOuterPiant!!)





    }



}