
import 'package:flutter/material.dart';
import 'package:foodpj/ui/pages/detail/detail.dart';
import 'package:foodpj/ui/pages/filter/filter.dart';
import 'package:foodpj/ui/pages/main/main.dart';
import 'package:foodpj/ui/pages/meal/meal.dart';

class JSRouter{

  static final String initialRoute = JSMainScreen.routeName;

  static final Map<String,WidgetBuilder> routes = {
    JSMainScreen.routeName:(ctx)=>JSMainScreen(),
    JSMealScreen.routeName:(ctx)=>JSMealScreen(),
    JSDetailScreen.routeName:(ctx)=>JSDetailScreen(),
  };

  static final RouteFactory generateRoute = (settings){

    if(settings.name == JSFilterScreen.routeName){
      return MaterialPageRoute(
        builder: (ctx){
          return JSFilterScreen();
        },
        fullscreenDialog: true
      );
    }

    return null;
  };

  static final RouteFactory unknownRoute = (settings){
    return null;
  };

}