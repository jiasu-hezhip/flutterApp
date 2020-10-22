import 'package:flutter/material.dart';
import 'package:foodpj/core/model/meal_model.dart';
import 'package:foodpj/core/extension/int_extension.dart';
import 'package:foodpj/core/viewmodel/faver_view_model.dart';
import 'package:foodpj/ui/pages/detail/detail.dart';
import 'package:foodpj/ui/widgets/operation_item.dart';
import 'package:provider/provider.dart';

class JSMealItem extends StatelessWidget {

  final JSMealModel _meal;

  const JSMealItem(this._meal);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        margin: EdgeInsets.all(10.px),
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.px)
        ),
        child: Column(
          children: <Widget>[
            buildBasicInfo(context),
            buildOperationInfo()
          ],
        ),
      ),
      onTap: (){
        Navigator.of(context).pushNamed(JSDetailScreen.routeName,arguments: _meal);
      },
    );
  }

  Widget buildBasicInfo(BuildContext context){
    return Stack(
      children: <Widget>[
        ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(12.px),topRight: Radius.circular(12.px)),
            child: Image.network(_meal.imageUrl,width: double.infinity,height: 250.px,fit: BoxFit.cover,)),
        Positioned(
          right: 10.px,
          bottom: 10.px,
          child: Container(
            width: 300.px,
            padding: EdgeInsets.symmetric(horizontal: 10.px,vertical: 5.px),
            decoration: BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.circular(6.px)
            ),
            child: Text(_meal.title,style: Theme.of(context).textTheme.display3.copyWith(color: Colors.white),),
          ),
        )
      ],
    );
  }

  Widget buildOperationInfo(){
    return Padding(
      padding: EdgeInsets.all(16.px),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          JSOperationItem(Icon(Icons.schedule), "${_meal.duration}min"),
          JSOperationItem(Icon(Icons.restaurant), "${_meal.complexityStr}"),
          buildFaverItem()
        ],
      ),
    );
  }

  Widget buildFaverItem(){

    return Consumer<JSFaverViewModel>(
        builder: (ctx,faverVM,child){
          final iconData = faverVM.isFaver(_meal)?Icons.favorite:Icons.favorite_border;
          final iconColor = faverVM.isFaver(_meal)?Colors.red:Colors.grey;
          final iconText = faverVM.isFaver(_meal)?"已收藏":"未收藏";
          return GestureDetector(
            child: JSOperationItem(
                Icon(iconData,color: iconColor,), iconText),
            onTap: (){
              faverVM.handleMeal(_meal);
            },
          );
        });
  }

}
