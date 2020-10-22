import 'package:flutter/material.dart';
import 'package:foodpj/core/model/category_model.dart';
import 'package:foodpj/core/model/meal_model.dart';
import 'package:foodpj/core/viewmodel/meal_view_model.dart';
import 'package:foodpj/ui/widgets/meal_item.dart';
import 'package:provider/provider.dart';
import 'package:collection/collection.dart';
class JSMealScreen extends StatelessWidget {

  static const String routeName = '/meal';

  @override
  Widget build(BuildContext context) {

    final category = ModalRoute.of(context).settings.arguments as JSCategoryModel;

    
    
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Selector<JSMealViewModel,List<JSMealModel>>(
          
          selector: (ctx,mealVM) =>mealVM.meals.where((element) => element.categories.contains(category.id)).toList(),
          shouldRebuild: (prev,next) => !ListEquality().equals(prev, next),
        builder: (ctx,meals,child){
            return ListView.builder(
                itemCount: meals.length,
                itemBuilder: (ctx,index){
                  return JSMealItem(meals[index]);
                });
        },
      ),
    );
  }
}
//Consumer<JSMealViewModel>(
//builder: (ctx,mealVM,child){
//final meals = mealVM.meals.where((element) => element.categories.contains(category.id)).toList();
//return ListView.builder(
//itemCount: meals.length,
//itemBuilder: (ctx,index){
//return ListTile(title: Text(meals[index].title),);
//});
//},
//),