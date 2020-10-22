import 'package:flutter/material.dart';
import 'package:foodpj/core/viewmodel/faver_view_model.dart';
import 'package:foodpj/ui/widgets/meal_item.dart';
import 'package:provider/provider.dart';

class JSFaverContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<JSFaverViewModel>(
        builder: (ctx,faverVM,child){
          if(faverVM.meals.length == 0){
            return Center(
              child: Text('未收藏'),
            );
          }
          return ListView.builder(
              itemBuilder: (itemCtx,index){
                return JSMealItem(faverVM.meals[index]);
              },
              itemCount: faverVM.meals.length);
        });
  }
}
