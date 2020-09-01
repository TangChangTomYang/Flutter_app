import 'package:flutter/material.dart';

import 'bottom_nav_bar/bottom_nav_bar.dart';
import '../group/group.dart';
import '../home/home.dart';
import '../mall/mall.dart';
import '../subject/subject.dart';
import '../profile/profile.dart';


class YRMainPage extends StatefulWidget {
  @override
  _YRMainPageState createState() => _YRMainPageState();
}

class _YRMainPageState extends State<YRMainPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: selectedIndex,
          children: <Widget>[
            YRHomePage(),
            YRSubjectPage(),
            YRGroupPage(),
            YRMallPage(),
            YRProfilePage(),
          ],
        ),

        bottomNavigationBar: YRBottomNavBar(
          onTap: (index) {
            print(' 用户点击了索引: ${index}');
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
        ));
  }
}
