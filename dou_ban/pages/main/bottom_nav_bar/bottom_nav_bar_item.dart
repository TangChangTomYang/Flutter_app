import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 自定义一个类继承自  BottomNavigationBarItem 实现 tabbarItem
class YRBottomNavBarItem extends BottomNavigationBarItem {

  YRBottomNavBarItem(String title, String icon)
      : super(
          title: Text(title),
          icon: Image.asset('asset/images/tabbar/${icon}.png', width: 30,),
          activeIcon: Image.asset('asset/images/tabbar/${icon}_active.png', width: 30,),
        );
}

/*说明:

1. 我们在使用 BottomNavigationBarItem 的时候会发现一个奇怪的问题, 系统只提供给我们设置选中时图片的属性,
   没有提供给选中时文字颜色的属性

   是这样的,
   - 因为每个item都有自己特定的图标样式通过item来单独设置是符合开发要求的, 因此系统没有提供
   - 因为为了保持一致性, 虽然可能有多个item, 但是不同的item应当有共性, 相同的选中文字颜色和非选中文字颜色,
      基于这一点, 我们在设置文字选中时需要在 BottomNavigationBar 中来设置

2. 因为我们在开发中, 最外层的app 是一个MaterialApp, 在MaterialApp 中的可以设置整个app 的主题, 这个主题会直接影响
   navBar的颜色和 底部bottomItemBarItem 选中的文字颜色

3. 我们可以通过设置materialApp 主题的方式来设置底部 BottomNavigationBarItem 选中的标题颜色, 也可以通过BottomNavigationBar
   来设置BottomNavigationBarItem的选中你标题颜色
   Color selectedItemColor,
   Color unselectedItemColor,

*/