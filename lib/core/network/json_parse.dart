import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:foodpj/core/model/category_model.dart';

class JsonParse{
  static Future<List<JSCategoryModel>> getCategoryData()async{
    //1，加载字符串
    final jsonString = await rootBundle.loadString("assets/json/category.json");
    //2，转map或者list
    final result = json.decode(jsonString);
    //3,将map的内容转对象
    final resultList = result['category'];
    List<JSCategoryModel> categories = [];
    for(var json in resultList){
      categories.add(JSCategoryModel.fromJson(json));
    }
    return categories;
  }
}