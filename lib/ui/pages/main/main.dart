import 'package:flutter/material.dart';
import 'package:foodpj/ui/pages/home/home_drawer.dart';
import 'package:foodpj/ui/pages/main/initialize_items.dart';

class JSMainScreen extends StatefulWidget {

  static const String routeName = '/';

  @override
  _JSMainScreenState createState() => _JSMainScreenState();
}

class _JSMainScreenState extends State<JSMainScreen> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      drawer: JSHomeDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: bottomItems,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
