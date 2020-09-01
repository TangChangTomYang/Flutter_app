import 'package:flutter/material.dart';
import 'bottom_nav_bar_item.dart';

class YRBottomNavBar extends StatelessWidget {
  // 当点击item的时候就会调这个回调函数
  final ValueChanged<int> onTap;
  final int currentIndex;

  YRBottomNavBar({@required this.onTap, @required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: buildBottomNavBarItems(),
      // 当item的数量超过3个时, 必须将BottomNavigationBar的type 设置为 fixed, 否则item 不显示标题
      type: BottomNavigationBarType.fixed,
      onTap: onTap,
      currentIndex: currentIndex,
// 也可以通过app 主题来控制
//      selectedItemColor: Colors.red,        // 选中title颜色
//      unselectedItemColor: Colors.green,    // 未 选中title颜色
      selectedFontSize: 12,                 // 选中title 字体大小
      unselectedFontSize: 12,               // 未 选中title 字体大小   flutter默认选中字体要大点
    );
  }

  List<YRBottomNavBarItem> buildBottomNavBarItems() {
    return [
      YRBottomNavBarItem('首页', 'home'),
      YRBottomNavBarItem('书影音', 'subject'),
      YRBottomNavBarItem('小组', 'group'),
      YRBottomNavBarItem('市集', 'mall'),
      YRBottomNavBarItem('我的', 'profile'),
    ];
  }
}
