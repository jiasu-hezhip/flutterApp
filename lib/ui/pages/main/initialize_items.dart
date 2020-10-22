import 'package:flutter/material.dart';
import 'package:foodpj/ui/pages/favor/favor.dart';
import 'package:foodpj/ui/pages/home/home.dart';

final List<Widget> pages = [
  JSHomeScreen(),
  JSFavorScreen()
];

final List<BottomNavigationBarItem> bottomItems = [
  BottomNavigationBarItem(
      title: Text('首页'),
      icon: Icon(Icons.home)),
  BottomNavigationBarItem(
      title: Text('收藏'),
      icon: Icon(Icons.star)),
];