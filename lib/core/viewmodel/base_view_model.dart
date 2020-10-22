import 'package:flutter/material.dart';
import 'package:foodpj/core/model/meal_model.dart';

import 'filter_view_model.dart';

class BaseMealViewModel extends ChangeNotifier{

  List<JSMealModel> _meals = [];

  set meals(List<JSMealModel> value) {
    _meals = value;
    notifyListeners();
  }

  JSFilterViewMOdel _jsFilterViewMOdel;

  List<JSMealModel> get meals{
    return _meals.where((meal){
      if(_jsFilterViewMOdel.isGlutenFree && !meal.isGlutenFree){return false;}
      if(_jsFilterViewMOdel.isVegetarian && !meal.isVegetarian){return false;}
      if(_jsFilterViewMOdel.isVegan && !meal.isVegan){return false;}
      if(_jsFilterViewMOdel.isLactoseFree && !meal.isLactoseFree){return false;}
      return true;
    }).toList();
  }

  List<JSMealModel> get omeals{
    return _meals;
  }

  void updateFilter(JSFilterViewMOdel jsFilterViewMOdel){
    _jsFilterViewMOdel = jsFilterViewMOdel;
  }


}