
import 'package:flutter/material.dart';
import 'profile_content.dart';

class YRProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的标题'),
      ),
      body: YRProfileContent(),
    );
  }
}
