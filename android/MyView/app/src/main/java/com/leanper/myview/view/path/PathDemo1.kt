package com.leanper.myview.view.path

import android.animation.ValueAnimator
import android.annotation.SuppressLint
import android.content.Context
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.Path
import android.graphics.PathMeasure
import android.util.AttributeSet
import android.view.View
import com.leanper.myview.R


class PathDemo1:View {
    private var mPaint:Paint?=null
    private var   mPath:Path?=null
    private var mCurAnimValue: Float? = null
    constructor(context: Context?) : this(context,null)
    constructor(context: Context?, attrs: AttributeSet?) : this(context, attrs,0)
    constructor(context: Context?, attrs: AttributeSet?, defStyleAttr: Int) : super(context, attrs, defStyleAttr){
        initPaint()
    }

    @SuppressLint("ResourceAsColor")
    private fun initPaint() {
         mPath=Path()
        mPaint= Paint()
        mPaint?.let {
            it.strokeWidth=5f
            it.color= R.color.black
            it.strokeCap=Paint.Cap.ROUND
            it.isAntiAlias=true
            it.style=Paint.Style.STROKE


        }






    }

    override fun onDraw(canvas: Canvas?) {
        super.onDraw(canvas)


        canvas?.save()
//        mPath?.let {
//
//            it.moveTo(10f,10f)
//            it.lineTo(100f,100f)
//            it.lineTo(400f,200f)
//            it.lineTo(100f,200f)
//
//
//        }

        mPath?.addCircle(100f, 100f, 50f, Path.Direction.CW)
        var mPathMeasure = PathMeasure(mPath, true) //true计算的path的闭合长度,false则测量当前path状态长度

        val animator = ValueAnimator.ofFloat(0f, 1f)
        animator.repeatCount = ValueAnimator.INFINITE //无限循环

        animator.addUpdateListener { animation ->
            mCurAnimValue = animation.animatedValue as Float
            invalidate()
        }
        animator.duration = 2000
        animator.start()
        
        canvas?.drawPath(mPath!!,mPaint!!)

        canvas?.restore()

        canvas?.save()
//        mPath?.let {
//            it.quadTo(300f,100f,400f,300f)
//        }
//        canvas?.drawPath(mPath!!,mPaint!!)
//        canvas?.restore()
//
//        canvas?.save()
//        mPath?.let {
//            it.cubicTo(500f,100f,700f,300f,900f,500f)
//        }
//        canvas?.drawPath(mPath!!,mPaint!!)
//        canvas?.restore()




    }

    fun start(){




    }


}