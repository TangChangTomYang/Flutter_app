
import 'package:flutter/material.dart';
import 'subject_content.dart';


class YRSubjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('书影音标题'),
      ),
      body: YRSubjectConntent(),


    );
  }
}
