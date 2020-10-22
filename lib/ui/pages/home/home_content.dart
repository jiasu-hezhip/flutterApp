import 'package:flutter/material.dart';
import 'package:foodpj/core/model/category_model.dart';
import 'package:foodpj/core/network/json_parse.dart';
import 'package:foodpj/core/extension/int_extension.dart';

import 'home_category_item.dart';


class JSHomeContent extends StatefulWidget {
  @override
  _JSHomeContentState createState() => _JSHomeContentState();
}

class _JSHomeContentState extends State<JSHomeContent> {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future:JsonParse.getCategoryData() ,
        builder: (ctx,snapshot){
          if(!snapshot.hasData){
            return Center(child: CircularProgressIndicator());
          }else{
            final categories = snapshot.data;
            return GridView.builder(
                padding: EdgeInsets.all(20.px),
                itemCount: categories.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20.px,
                    mainAxisSpacing: 20.px,
                    childAspectRatio: 1.5
                ),
                itemBuilder: (ctx,index){
                  return JSHomeCategoryItem(categories[index]);
                }
            );
          }
        });
  }
}

