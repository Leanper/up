package com.leanper.myview.view

import android.animation.AnimatorSet
import android.animation.ValueAnimator
import android.content.Context
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.Path
import android.graphics.RectF
import android.util.AttributeSet
import android.util.Log
import android.util.TypedValue
import android.view.View
import com.leanper.myview.R


class PayView : View {

    private val PROGRESS_COLOR: Int = android.graphics.Color.parseColor("#10a679")
    private val PROGRESS_WIDTH = 5
    private val RADIUS = 90

    private var mProgressColor = PROGRESS_COLOR
    private var mProgressWidth: Int = dp2px(PROGRESS_WIDTH)
    private var mRadius: Int = dp2px(RADIUS)

    private var mPaint:Paint?=null
    private var mStatus = Status.Loading

    private var minAngle = -90
    private var startAngle = -90
    private var endAngle = 120
    private val rotateDelta = 4
    private var curAngle = 0

    private var path: Path? = null
    private var lineValueLeft //左边对勾
            = 0f
    private var lineValueRight //右边对勾
            = 0f
    private var failLineFirst //叉号
            = 0f
    private var failLineSecond = 0f


    constructor(context: Context?) : this(context,null)
    constructor(context: Context?, attrs: AttributeSet?) : this(context, attrs,0)
    constructor(context: Context?, attrs: AttributeSet?, defStyleAttr: Int) : super(
        context,
        attrs,
        defStyleAttr
    ){
        var a=context?.obtainStyledAttributes(attrs, R.styleable.PayView)
        mProgressColor= a?.getColor(R.styleable.PayView_progress_color,resources.getColor(R.color.black))!!
        mProgressWidth= a?.getDimension(R.styleable.PayView_progress_width,1f).toInt()
        mRadius=a?.getDimension(R.styleable.PayView_radius,1f).toInt()
        a.recycle()
        initPaint()

    }

    /*
    * 初始化画笔
    * */
    private fun initPaint() {
        mPaint=Paint()
        mPaint?.color=mProgressColor
        mPaint?.isAntiAlias=true
        mPaint?.strokeCap=Paint.Cap.ROUND
        mPaint?.strokeWidth=5f
        mPaint?.style=Paint.Style.STROKE

        path = Path()
        path?.moveTo(mRadius / 2f, mRadius.toFloat())
        path?.lineTo(mRadius.toFloat(), mRadius + mRadius / 2f)
        path?.lineTo(mRadius + mRadius /2f, mRadius / 2f)

    }


    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
        val widthMode = MeasureSpec.getMode(widthMeasureSpec)
        val heightMode = MeasureSpec.getMode(heightMeasureSpec)
        var w=0;
        var h=0

        val widthSize: Int
        val heightSize: Int
        if (widthMode != MeasureSpec.EXACTLY) {
            widthSize = paddingLeft + mProgressWidth + mRadius * 2 + paddingRight
             w=MeasureSpec.makeMeasureSpec(widthSize, MeasureSpec.EXACTLY)
        }
        if (heightMode != MeasureSpec.EXACTLY) {
            heightSize = paddingTop + mProgressWidth + mRadius * 2 + paddingBottom
            h = MeasureSpec.makeMeasureSpec(heightSize, MeasureSpec.EXACTLY)
        }
        setMeasuredDimension(w,h)
    }

    override fun onDraw(canvas: Canvas?) {
        super.onDraw(canvas)


        canvas!!.save()
        canvas!!.translate(paddingLeft.toFloat(), paddingTop.toFloat())

        if (mStatus === Status.Loading) {
            if (startAngle === minAngle) {
                endAngle += 6
            }
            if (endAngle >= 300 || startAngle > minAngle) {
                startAngle += 6
                if (endAngle > 20) {
                    endAngle -= 6
                }
            }
            if (startAngle > minAngle + 300) {
                minAngle = startAngle
                endAngle = 20
            }
            canvas!!.rotate(rotateDelta.let({ curAngle += it; curAngle.toFloat() }), mRadius.toFloat(), mRadius.toFloat()) //旋转rotateDelta=4的弧长

                canvas!!.drawArc(RectF(0f, 0f, mRadius * 2f, mRadius * 2f), startAngle.toFloat(), endAngle.toFloat(), false,
                    mPaint!!
                )

            invalidate()
        } else if (mStatus === Status.LoadSuccess) {
            canvas!!.drawArc(RectF(0f, 0f, mRadius * 2f, mRadius * 2f), startAngle.toFloat(), 360f, false, mPaint!!)
            //canvas.drawPath(path,mPaint);
            //画圆圈中的对勾
            canvas!!.drawLine(mRadius / 2f, mRadius.toFloat(), mRadius / 2 + lineValueLeft, mRadius + lineValueLeft, mPaint!!)
            canvas!!.drawLine(mRadius.toFloat(), mRadius + mRadius / 2f, mRadius + lineValueRight, mRadius + mRadius / 2 - 1.5f * lineValueRight, mPaint!!)
        } else {
            canvas!!.drawArc(RectF(0f, 0f, mRadius * 2f, mRadius * 2f), startAngle.toFloat(), 360f, false, mPaint!!)
            //画圆圈中的叉号(画右边叉号的时候，终止位置的x坐标为起始x位置减去failLineFirst，而failLineFirst在属性动画中的取值范围是0-mRadius)
            canvas!!.drawLine(mRadius + mRadius / 2f, mRadius / 2f, mRadius * 3 / 2 - failLineFirst, mRadius / 2 + failLineFirst, mPaint!!)
            canvas!!.drawLine(mRadius / 2f, mRadius / 2f, mRadius / 2 + failLineSecond, mRadius / 2 + failLineSecond, mPaint!!)
        }

        canvas!!.restore()
    }


    /*
    * 加载状态：成功
    * */
    fun startAnima() {
        //对勾左边线的属性动画
        val animatorLeft = ValueAnimator.ofFloat(0f, mRadius / 2f)
        animatorLeft.addUpdateListener { animation ->
            lineValueLeft = animation.animatedValue as Float
            Log.i("lineValueLeft", lineValueLeft.toString() + "")
            invalidate() //重绘，调onDraw()重绘
        }
        //对勾右边线的属性动画
        val animatorRight = ValueAnimator.ofFloat(0f, mRadius/ 2f)
        animatorRight.addUpdateListener { animation ->
            lineValueRight = animation.animatedValue as Float
            Log.i("lineValueRight", lineValueRight.toString() + "")
            invalidate()
        }
        //将多个动画组合到一起需要借助AnimatorSet这个类
        val animatorSet = AnimatorSet()
        animatorSet.play(animatorRight).after(animatorLeft)
        animatorSet.duration = 150
        animatorSet.start()
    }
    /*
       * 加载状态：失败
       * */
    fun failAnima() {
        val failOne = ValueAnimator.ofFloat(0f, mRadius.toFloat())
        failOne.addUpdateListener { animation ->
            failLineFirst = animation.animatedValue as Float
            invalidate()
        }
        val failOther = ValueAnimator.ofFloat(0f, mRadius.toFloat())
        failOther.addUpdateListener { animation ->
            failLineSecond = animation.animatedValue as Float
            invalidate()
        }
        val animatorSet = AnimatorSet()
        animatorSet.play(failOther).after(failOne)
        animatorSet.duration = 150
        animatorSet.start()
    }

    /*
    * 枚举 加载状态
    * */
     enum class Status{
        Loading,
        LoadSuccess,
        LoadFail
    }

    fun getStatus(): Status? {
        return mStatus
    }

    fun setStatus(mStatus: Status?) {
        this.mStatus = mStatus!!
        invalidate()
    }



   /**
    * sp 2 px
    */
     fun dp2px(spVal:Int): Int {

        return TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP,
                spVal.toFloat(), resources.displayMetrics).toInt()
    }

      fun px2dp(spVal: Int) :Int{

        return TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_SP, spVal.toFloat(),resources.displayMetrics).toInt()
    }

}