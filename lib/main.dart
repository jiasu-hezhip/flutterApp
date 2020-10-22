import 'package:flutter/material.dart';
import 'package:foodpj/core/model/meal_model.dart';
import 'package:foodpj/core/network/meal_request.dart';
import 'package:foodpj/core/router/route.dart';
import 'package:foodpj/core/viewmodel/faver_view_model.dart';
import 'package:foodpj/core/viewmodel/filter_view_model.dart';
import 'package:foodpj/core/viewmodel/meal_view_model.dart';
import 'package:foodpj/ui/shared/app_theme.dart';
import 'package:foodpj/ui/shared/size_fit.dart';
import 'package:provider/provider.dart';

void main() {

  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (ctx) => JSFilterViewMOdel()),

          ChangeNotifierProxyProvider<JSFilterViewMOdel,JSMealViewModel>(
            create: (ctx) => JSMealViewModel(),
            update: (ctx,filterVM,mealVM){
              mealVM.updateFilter(filterVM);
              return mealVM;
            },
          ),
          ChangeNotifierProxyProvider<JSFilterViewMOdel,JSFaverViewModel>(
            create: (ctx) => JSFaverViewModel(),
            update: (ctx,filterVM,faverVM){
              faverVM.updateFilter(filterVM);
              return faverVM;
            },
          ),
//          ChangeNotifierProvider(create: (ctx) => JSMealViewModel()),
//          ChangeNotifierProvider(create: (ctx) => JSFaverViewModel()),
        ],
          child: MyApp())
  );
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    JSSizeFit.initialize();

    return MaterialApp(
      title: '美食广场',
      //主题
      theme: JSAppTheme.lightTheme,
      darkTheme: JSAppTheme.darkTheme,
      //路由
      initialRoute: JSRouter.initialRoute,
      routes: JSRouter.routes,
      onGenerateRoute: JSRouter.generateRoute,
      onUnknownRoute: JSRouter.unknownRoute,
    );
  }
}
