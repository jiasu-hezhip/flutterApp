import 'package:flutter/material.dart';
import 'package:foodpj/core/model/meal_model.dart';
import 'package:foodpj/core/viewmodel/faver_view_model.dart';
import 'package:foodpj/ui/pages/detail/detail_content.dart';
import 'package:provider/provider.dart';

class JSDetailScreen extends StatelessWidget {

  static const String routeName = '/detail';

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as JSMealModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: JSDetailContent(meal),
      floatingActionButton: Consumer<JSFaverViewModel>(
        builder: (ctx,faverVM,child){
          final iconData = faverVM.isFaver(meal)?Icons.favorite:Icons.favorite_border;
          final iconColor = faverVM.isFaver(meal)?Colors.red:Colors.grey;
          return FloatingActionButton(
              child: Icon(iconData,color: iconColor,),
              onPressed: (){
                faverVM.handleMeal(meal);
              });
        },
      ));
  }
}
