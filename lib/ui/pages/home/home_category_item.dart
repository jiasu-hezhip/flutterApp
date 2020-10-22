import 'package:flutter/material.dart';
import 'package:foodpj/core/model/category_model.dart';
import 'package:foodpj/core/extension/int_extension.dart';
import 'package:foodpj/ui/pages/meal/meal.dart';


class JSHomeCategoryItem extends StatelessWidget {

  final JSCategoryModel _categoryModel;

  JSHomeCategoryItem(this._categoryModel);

  @override
  Widget build(BuildContext context) {
    final bgColor = _categoryModel.cColor;
    return GestureDetector(
      child: Container(
          decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(12.px),
              gradient: LinearGradient(colors: [
                bgColor.withOpacity(.5),
                bgColor
              ])
          ),
          alignment: Alignment.center,
          child: Text(_categoryModel.title,style: Theme.of(context).textTheme.display2,)
      ),
      onTap: (){
        Navigator.of(context).pushNamed(JSMealScreen.routeName,arguments: _categoryModel);
      },
    );
  }
}
