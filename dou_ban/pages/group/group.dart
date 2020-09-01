import 'package:flutter/material.dart';
import 'group_content.dart';
class YRGroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('小组标题'),
      ),
      body: YRGroupContent(),
    );
  }
}
