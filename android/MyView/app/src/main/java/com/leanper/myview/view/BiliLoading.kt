package com.leanper.myview.view

import android.animation.AnimatorSet
import android.animation.ObjectAnimator
import android.animation.ValueAnimator
import android.content.Context
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.Path
import android.util.AttributeSet
import android.view.View
import android.view.animation.DecelerateInterpolator
import com.leanper.myview.R

//https://www.jianshu.com/p/f64c3cd25f67
class BiliLoading :View{
    private var mPaint: Paint?=null
    private var   mPath: Path?=null
    private var mColor:Int?=0
    private var mWidth:Int?=0
    private var mRadius=150f
    private var TAG="BiliLoading"
    private var mStatus = BiliLoading.Status.Loading

    constructor(context: Context?) : this(context,null)
    constructor(context: Context?, attrs: AttributeSet?) : this(context, attrs,0)
    constructor(context: Context?, attrs: AttributeSet?, defStyleAttr: Int) : super(context, attrs, defStyleAttr){
        var a=context?.obtainStyledAttributes(attrs, R.styleable.BiliLoading)
         mColor=a?.getColor(R.styleable.BiliLoading_paint_color,resources.getColor(R.color.teal_200))
         mWidth=a?.getInt(R.styleable.BiliLoading_paint_width,1)
        a?.recycle()
        initPaint()
    }

    private fun initPaint(){
        mPaint=Paint()
        mPaint?.strokeCap=Paint.Cap.ROUND
        mPaint?.style=Paint.Style.STROKE
        mPaint?.isAntiAlias=true
        mPaint?.strokeWidth=5f
        mPath=Path()

    }

    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec)
    }

    override fun onDraw(canvas: Canvas?) {
        super.onDraw(canvas)


        mPath?.reset()
        mPath?.let {
            it.moveTo(mRadius/2,mRadius/2)
            it.lineTo(mRadius,mRadius)
            it.lineTo(0f,mRadius)
            it.lineTo(0f,mRadius*2)
            it.lineTo(mRadius*2,mRadius*2)
            it.lineTo(mRadius*2,mRadius)
            it.lineTo(mRadius,mRadius)
            it.lineTo(mRadius*3/2,mRadius/2)

        }
        canvas?.drawPath(mPath!!,mPaint!!)
    }

    /*
  * 加载状态：成功
  * */
    fun startAnima() {
        //左边线的属性动画
        val animatorLeft = ValueAnimator.ofFloat(mRadius/2,mRadius/2)
        animatorLeft.addUpdateListener { animation ->
            mRadius = animation.animatedValue as Float
            invalidate() //重绘，调onDraw()重绘
        }
        val animatorLeft1 = ValueAnimator.ofFloat(mRadius,mRadius)
        animatorLeft.addUpdateListener { animation ->
            mRadius = animation.animatedValue as Float
            invalidate() //重绘，调onDraw()重绘
        }
        val animatorLeft2 = ValueAnimator.ofFloat(0f, mRadius )
        animatorLeft.addUpdateListener { animation ->
            mRadius = animation.animatedValue as Float
            invalidate() //重绘，调onDraw()重绘
        }
        val animatorLeft3 = ValueAnimator.ofFloat(0f, mRadius *2)
        animatorLeft.addUpdateListener { animation ->
            mRadius = animation.animatedValue as Float
            invalidate() //重绘，调onDraw()重绘
        }




        val animatorLeft4 = ValueAnimator.ofFloat(mRadius*2,mRadius*2)
        animatorLeft.addUpdateListener { animation ->
            mRadius = animation.animatedValue as Float
            invalidate() //重绘，调onDraw()重绘
        }
        val animatorLeft5 = ValueAnimator.ofFloat(mRadius*2,mRadius)
        animatorLeft.addUpdateListener { animation ->
            mRadius = animation.animatedValue as Float
            invalidate() //重绘，调onDraw()重绘
        }
        val animatorLeft6 = ValueAnimator.ofFloat(mRadius,mRadius)
        animatorLeft.addUpdateListener { animation ->
            mRadius = animation.animatedValue as Float
            invalidate() //重绘，调onDraw()重绘
        }
        val animatorLeft7 = ValueAnimator.ofFloat(mRadius*3/2,mRadius/2)
        animatorLeft.addUpdateListener { animation ->
            mRadius = animation.animatedValue as Float
            invalidate() //重绘，调onDraw()重绘
        }



        //将多个动画组合到一起需要借助AnimatorSet这个类
        val animatorSet = AnimatorSet()
        //.after(animatorLeft1).after(animatorLeft2).after(animatorLeft3).after(animatorLeft4).after(animatorLeft5).after(animatorLeft6)
        animatorSet.play(animatorLeft1).after(animatorLeft)
        animatorSet.duration = 150
        animatorSet.start()
    }

     fun startAnimatorPath(view: View, propertyName: String, path: AnimatorPath) {
        val anim: ObjectAnimator = ObjectAnimator.ofObject(this, propertyName, PathEvaluator(), path.getPoints().toArray())
        anim.interpolator = DecelerateInterpolator() //动画插值器
        anim.duration = 3000
        anim.start()
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


}