import 'package:foodpj/core/model/meal_model.dart';
import 'package:foodpj/core/viewmodel/base_view_model.dart';

class JSFaverViewModel extends BaseMealViewModel{

  void addMeal(JSMealModel jsMealModel){
    omeals.add(jsMealModel);
    notifyListeners();
  }

  void removeMeal(JSMealModel jsMealModel){
    omeals.remove(jsMealModel);
    notifyListeners();
  }

  void handleMeal(JSMealModel jsMealModel){
    if(isFaver(jsMealModel)){
      removeMeal(jsMealModel);
    }else{
      addMeal(jsMealModel);
    }
  }

  bool isFaver(JSMealModel jsMealModel){
    return omeals.contains(jsMealModel);
  }

}