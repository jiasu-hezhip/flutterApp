import 'package:flutter/material.dart';

class JSAppTheme {
  // 1.抽取相同的样式
  static const double _titleFontSize = 20;
  static const double _bodyFontSize = 14;
  static const double _smallFontSize = 16;
  static const double _normalFontSize = 20;
  static const double _largeFontSize = 24;
  static const double _xLargeFontSize = 30;

  // 2.亮色主题
  static final ThemeData lightTheme = ThemeData(
      primarySwatch: Colors.pink,
      accentColor: Colors.amber,
      canvasColor: Color.fromRGBO(255,254,222,1),
//      primaryTextTheme: TextTheme(
//          // ignore: deprecated_member_use
//          title: TextStyle(
//              color: Colors.white,
//              fontSize: _titleFontSize
//          )
//      ),
      textTheme: TextTheme(
        // ignore: deprecated_member_use
        body1: TextStyle(fontSize: _bodyFontSize),
        // ignore: deprecated_member_use
        display1: TextStyle(fontSize: _smallFontSize,color: Colors.black87,fontWeight: FontWeight.w400),
        // ignore: deprecated_member_use
        display2: TextStyle(fontSize: _normalFontSize,color: Colors.black87,fontWeight: FontWeight.w400),
        // ignore: deprecated_member_use
        display3: TextStyle(fontSize: _largeFontSize,color: Colors.black87,fontWeight: FontWeight.w400),
        // ignore: deprecated_member_use
        display4: TextStyle(fontSize: _xLargeFontSize,color: Colors.black87,fontWeight: FontWeight.w400),
      )
  );

  // 3.暗黑主题
  static final ThemeData darkTheme = ThemeData(
      primaryColor: Colors.grey,
      primaryTextTheme: TextTheme(
          // ignore: deprecated_member_use
          title: TextStyle(
              color: Colors.white,
              fontSize: _titleFontSize
          )
      ),
      textTheme: TextTheme(
          // ignore: deprecated_member_use
          title: TextStyle(color: Colors.white),
          // ignore: deprecated_member_use
          body1: TextStyle(color: Colors.white70)
      )
  );
}