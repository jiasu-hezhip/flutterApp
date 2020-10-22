import 'package:foodpj/core/model/meal_model.dart';
import 'package:foodpj/core/network/http_request.dart';

class JSMealRequest{
  static Future<List<JSMealModel>> getMealData()async{
    final url = 'http://123.207.32.32:8001/api/meal';
    final result = await HttpRequest.request(url);
    final mealArray = result["meal"];
    List<JSMealModel> meals = [];
    for(var json in mealArray){
      meals.add(JSMealModel.fromJson(json));
    }
    return meals;

  }
}