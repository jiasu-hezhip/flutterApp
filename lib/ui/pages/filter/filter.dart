import 'package:flutter/material.dart';
import 'package:foodpj/ui/pages/favor/faver_content.dart';

import 'filter_content.dart';

class JSFilterScreen extends StatelessWidget {

  static const String routeName = '/filter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('美食过滤'),
      ),
      body: JSFilterContent(),
    );
  }
}
