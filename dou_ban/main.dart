
import 'package:flutter/material.dart';

import 'pages/main/main_page.dart';

main(List<String> args){

  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.green,  // 主题色(navBar 和 item选中色)
      splashColor: Colors.transparent,      // 飞溅色
      highlightColor: Colors.transparent    // 去掉flutter默认选中的水波纹圆圈效果

    ),
    home: YRMainPage(),
  ));
}


