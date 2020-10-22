import 'package:foodpj/core/network/meal_request.dart';
import 'package:foodpj/core/viewmodel/base_view_model.dart';

class JSMealViewModel extends BaseMealViewModel{

  JSMealViewModel(){
    JSMealRequest.getMealData().then((value){
      meals = value;
    });

  }

}