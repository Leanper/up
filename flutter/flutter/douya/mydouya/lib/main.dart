import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Sflash.dart';
void main(){
  runApp(SplashPage());
  if (Platform.isAndroid) {
  //设置Android头部的导航栏透明
      SystemUiOverlayStyle systemUiOverlayStyle =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
}

