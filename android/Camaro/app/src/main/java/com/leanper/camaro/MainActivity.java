package com.leanper.camaro;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

/**
 * @Title: MainActivity
 * @Description: 选择背景颜色
 * @author: Leanper
 * @date: 2019/11/14 16:56
 */
public class MainActivity extends AppCompatActivity {

    @BindView(R.id.bt_one)
    Button btOne;
    @BindView(R.id.bt_two)
    Button btTwo;
    @BindView(R.id.v_blue)
    View vBlue;
    @BindView(R.id.v_red)
    View vRed;
    @BindView(R.id.v_white)
    View vWhite;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ButterKnife.bind(this);
        //https://blog.csdn.net/weixin_33712987/article/details/87948381
        //https://blog.csdn.net/dingdegao/article/details/100740257
        //https://www.jianshu.com/p/5f860f14f665
        init();

    }

    private void init() {

    }


    @OnClick({R.id.bt_one, R.id.bt_two, R.id.v_blue, R.id.v_red, R.id.v_white})
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.bt_one:
                break;
            case R.id.bt_two:
                break;
            case R.id.v_blue:
                break;
            case R.id.v_red:
                break;
            case R.id.v_white:
                break;
        }
    }
}
