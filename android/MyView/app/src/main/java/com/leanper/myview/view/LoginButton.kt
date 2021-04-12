package com.leanper.myview.view

import android.content.Context
import android.util.AttributeSet
import android.view.View
import com.leanper.myview.R

/**
 * 创建日期：2021/2/22 8:48
 * @author Leanper
 * @version 1.0
 * 包名： com.leanper.myview.view
 *
 * https://github.com/GuoFeilong/ATLoginButton_New
 * 类说明：
 */

class LoginButton : View {
    constructor(context: Context?) : this(context,null)
    constructor(context: Context?, attrs: AttributeSet?) : this(context, attrs,0)
    constructor(context: Context?, attrs: AttributeSet?, defStyleAttr: Int) : super(context, attrs, defStyleAttr){
       var a= context?.obtainStyledAttributes(R.styleable.LoginButton)
//        var butColor=a?.getColor(R.styleable.LoginButton_button_color,getResources().getColor(R.color.teal_200))
//                    buttonColor = a?.getColor(R.styleable.LoginButton_button_normal_color, getResources().getColor(R.color.colorAccent))
//                    textColor = a?.getColor(R.styleable.LoginButton_button_normal_stroke_color, getResources().getColor(R.color.colorW));
//                    textSize = a?.getDimensionPixelSize(attr, (int) TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_SP, 12, getResources().getDisplayMetrics()));
//                    loginDesc = a?.getString(attr);
//                    failDesc = a?.getString(attr);
//                    circlerLoadingColor = a?.getColor(attr, Color.GRAY);
//                    circleLoadingLineWidth = a?.getDimensionPixelOffset(attr, (int) TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, 2, getResources().getDisplayMetrics()));
//                    failedButtonColor = a?.getColor(attr, Color.GRAY);
        a?.recycle()
    }
}