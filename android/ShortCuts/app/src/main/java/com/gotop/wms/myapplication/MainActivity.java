package com.gotop.wms.myapplication;

import android.os.Bundle;
import android.support.v7.app.AlertController;
import android.support.v7.app.AppCompatActivity;

/**
 * @Title:  MainActivity

 * @Description:    研究shortchuts
 * @author:  Leanper
 * @date:   2019/10/21 10:00

 */
public class MainActivity extends AppCompatActivity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        RecyclerView RecviewById = findViewById(R.id.tv);
//        setShortcuts();
    }

//    public void setShortcuts(){
//
//        Intent intent = new Intent();
//        intent.setAction("com.gotop.wms.appshortcuts.ADD_WEBSITE");
//        intent.setClassName("com.example.android.shortcutsample",
//                "com.gotop.wms.SettingActivity");
//        ShortcutInfo.Builder builder = new ShortcutInfo.Builder(this, "dynamic shortcut")
//                .setIntent(intent)
//                .setShortLabel("This is a dynamic shortcut")
//                .setLongLabel("This is a dynamic shortcut with long label")
//                .setIcon(Icon.createWithResource(this, R.mipmap.ic_launcher));
//        ShortcutManager shortcutManager = getSystemService(ShortcutManager.class);
//        shortcutManager.addDynamicShortcuts(Arrays.asList(builder.build()));
//    }




}
