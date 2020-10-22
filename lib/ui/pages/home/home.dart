import 'package:flutter/material.dart';
import 'package:foodpj/ui/pages/home/home_content.dart';
import 'package:foodpj/ui/pages/home/home_drawer.dart';

class JSHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('美食广场'),
        leading: IconButton(icon: Icon(Icons.menu), onPressed: (){Scaffold.of(context).openDrawer();}),
      ),

      body:JSHomeContent(),
    );
  }
}
