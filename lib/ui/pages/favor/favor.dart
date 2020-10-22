import 'package:flutter/material.dart';
import 'package:foodpj/ui/pages/favor/faver_content.dart';

class JSFavorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的收藏'),
      ),
      body: JSFaverContent(),
    );
  }
}
