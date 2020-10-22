import 'package:flutter/cupertino.dart';

class JSCategoryModel {
  String id;
  String title;
  String color;
  Color cColor;

  JSCategoryModel({this.id, this.title, this.color});

  JSCategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    color = json['color'];

    final colorInt = int.parse(color,radix: 16);
    cColor = Color(colorInt | 0xff000000);

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['color'] = this.color;
    return data;
  }
}