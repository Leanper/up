## android动画

http://inloop.github.io/interpolator/ 自定义差值器样式
https://www.jianshu.com/p/2412d00a0ce4 动画好的博文
https://www.jianshu.com/p/b0fc1b601f2c
---
+ 帧动画
+ 补间动画
+ 属性动画
---

### 帧动画
+ 依赖UI资源 原理是一张张的图片连贯的播放，从而产生动画效果

---
### 补间动画
+ 平移
+ 缩放
+ 旋转
+ 透明

代码如下：

     Animation animation = AnimationUtils.loadAnimation(this, R.anim.tv_translate);
     tv_translate.startAnimation(animation);
        
        //rotate是动画类型 根据不同类型设置不同属性
    <rotate xmlns:android="http://schemas.android.com/apk/res/android"
    android:duration="1000"
    android:pivotX="0"
    android:pivotY="0"
    android:toDegrees="180"
    android:interpolator="@android:anim/accelerate_decelerate_interpolator"
     />
     //代码实现
    AlphaAnimation translateAnimation=new AlphaAnimation(0,1);
    translateAnimation.setDuration(1000);
---
 组合动画通过创建set集合

# https://me.csdn.net/u011387817自定义view

        
### 属性动画

+ 类别
    + valueAnimator
    + ObjectAnimator
+ 动画属性
    + duration 动画播放时长
    + ShareInterpolator 设置差值器
    + fillAfter 控制动画结束时时候保持结束的状态
    + fillbofore 控制动画结束时保持开始的状态
    + repeatMode 设置重复次数 //reverse表示倒序回放，restart表示从头播放
+ 组合动画
    + 代码实现
    

    ObjectAnimator alphaAnim = ObjectAnimator.ofFloat(tv3, "alpha", 1.0f, 0.5f, 0.8f, 1.0f);
        ObjectAnimator scaleXAnim = ObjectAnimator.ofFloat(tv3, "scaleX", 0.0f, 1.0f);
        ObjectAnimator scaleYAnim = ObjectAnimator.ofFloat(tv3, "scaleY", 0.0f, 2.0f);
        ObjectAnimator rotateAnim = ObjectAnimator.ofFloat(tv3, "rotation", 0, 360);
        ObjectAnimator transXAnim = ObjectAnimator.ofFloat(tv3, "translationX", 100, 400);
        rotateAnim.setRepeatMode(ObjectAnimator.REVERSE);
        AnimatorSet set = new AnimatorSet();
        set.playTogether(alphaAnim, scaleXAnim, scaleYAnim, rotateAnim, transXAnim);
        set.setInterpolator(new AccelerateDecelerateInterpolator());
        set.setDuration(3000);
        set.start();


+ --
    - xml文件配置
    

    <?xml version="1.0" encoding="utf-8"?> 
    <set xmlns:android="http://schemas.android.com/apk/res/android" 
        android:interpolator="@android:anim/accelerate_interpolator" 
        android:shareInterpolator="true" 
        > 
        <alpha 
            android:fromAlpha="1.0" 
            android:toAlpha="0.0" 
            android:startOffset="500" 
            android:duration="3000" 
                /> 
        <rotate 
            android:fromDegrees="0" 
            android:toDegrees="400" 
            android:pivotX="50%" 
            android:pivotY="50%" 
            android:duration="3000" 
        /> 
       
    </set>  

    
#### Interpolator 

|类型|xml文件|作用|
---|----|----|
AccelerateDecelerateInterpolator |	@android:anim/accelerate_decelerate_interpolator |	动画始末速率较慢，中间加速
AccelerateInterpolator| 	@android:anim/accelerate_interpolator| 	动画开始速率较慢，之后慢慢加速
AnticipateInterpolator |	@android:anim/anticipate_interpolator |	开始的时候从后向前甩
AnticipateOvershootInterpolator |	@android:anim/anticipate_overshoot_interpolator| 	类似上面AnticipateInterpolator
BounceInterpolator |	@android:anim/bounce_interpolator |	动画结束时弹起
CycleInterpolator |	@android:anim/cycle_interpolator| 	循环播放速率改变为正弦曲线
DecelerateInterpolator| 	@android:anim/decelerate_interpolator |	动画开始快然后慢
LinearInterpolator 	|@android:anim/linear_interpolator 	|动画匀速改变
OvershootInterpolator |	@android:anim/overshoot_interpolator |	向前弹出一定值之后回到原来位置


---
+ ValueAnimation
    + 原理：通过不断控制 值 的变化，再不断 手动 赋给对象的属性，从而实现动画效果
    ![工作原理][1]
    ![工作原理图][2]
    + 三个重要方法
        + ValueAnimator.ofInt(int value)
        +  ValueAnimator.ofFloat(float value)
        +  ValueAnimator.ofObject(int value)

    + https://www.jianshu.com/p/7c95342f4bc2


---
+ ObjectAnimation
    + 原理：直接对对象的属性值进行改变操作，从而实现动画效果  
        + 如直接改变 View的 alpha 属性 从而实现透明度的动画效果
        + 继承自ValueAnimator类，即底层的动画实现机制是基于ValueAnimator类
    + 本质原理： 通过不断控制 值 的变化，再不断 自动 赋给对象的属性，从而实现动画效果
    ![工作原理][3]

+ https://www.jianshu.com/p/7c95342f4bc2
+ 
---

### objeceAnimation与ValueAnimation区别
+ 对比ValueAnimator类 & ObjectAnimator 类，其实二者都属于属性动画，本质上都是一致的：先改变值，然后 赋值 给对象的属性从而实现动画效果
+ 区别
    + ValueAnimator 类是先改变值，然后 手动赋值 给对象的属性从而实现动画；是 间接 对对象属性进行操作
    + ValueAnimator 类本质上是一种 改变 值 的操作机制
    + ObjectAnimator类是先改变值，然后 自动赋值 给对象的属性从而实现动画；是 直接 对对象属性进行操作
    + ObjectAnimator更加智能、自动化程度更高

---
#### 自定义差值器
- 当系统提供差值器不能满足我们需求是我们需自定义差值器
- https://www.jianshu.com/p/ab5785f017b2
- 
-



### 源码分析
+ https://mp.weixin.qq.com/s/uqFErwA5gBGrzW5GoKbnBA
+ https://mp.weixin.qq.com/s/2vSKiNEl7GsUyRk_QUzljQ
+ https://mp.weixin.qq.com/s/L6RgAy0YMkfU8nYKgtxYFA


  [1]: ./images/1591682878518.jpg "1591682878518.jpg"
  [2]: ./images/1591683628103.jpg "1591683628103.jpg"
  [3]: ./images/1591683196433.jpg "1591683196433.jpg"