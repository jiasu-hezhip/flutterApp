import 'package:flutter/material.dart';
import 'package:foodpj/core/model/meal_model.dart';
import 'package:foodpj/core/extension/int_extension.dart';
class JSDetailContent extends StatelessWidget {

  final JSMealModel _jsMealModel;

  const JSDetailContent(this._jsMealModel);

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          buildImage(),
          buildTitle(context, "制作材料"),
          buildMaterial(context),
          buildTitle(context, "步骤"),
          buildStep()
        ],
      ),
    );
  }



  Widget buildImage(){
    return Image.network(_jsMealModel.imageUrl);
  }

  Widget buildMaterial(BuildContext context){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.px),
      child: Container(
        padding: EdgeInsets.all(8.px),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.px)
        ),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: _jsMealModel.ingredients.length,
            itemBuilder: (ctx,index){
              return Card(
                color: Theme.of(context).accentColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.px,horizontal: 10.px),
                    child: Text(_jsMealModel.ingredients[index])),
              );
            }),
      ),
    );
  }

  Widget buildStep(){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.px),
      child: Container(
        padding: EdgeInsets.all(8.px),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.px)
        ),
        child: ListView.separated(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
            itemBuilder: (ctx,index){
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.purple,
                  child: Text("#${index+1}"),
                ),

                title: Text(_jsMealModel.steps[index]),

              );
            },
            separatorBuilder: (ctx,index){
              return Divider();
            },
            itemCount: _jsMealModel.steps.length,
        ),
      ),
    );


  }

  Widget buildTitle(BuildContext context,String text){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.px),
      child: Text(text,style: Theme.of(context).textTheme.display3,),
    );
  }

}
