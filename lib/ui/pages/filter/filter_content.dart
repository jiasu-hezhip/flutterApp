import 'package:flutter/material.dart';
import 'package:foodpj/core/extension/int_extension.dart';
import 'package:foodpj/core/viewmodel/faver_view_model.dart';
import 'package:foodpj/core/viewmodel/filter_view_model.dart';
import 'package:provider/provider.dart';
class JSFilterContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        buildChoice(context),
        buildBody()
      ],
    );
  }

  Widget buildChoice(BuildContext context){
    return Container(
      padding: EdgeInsets.all(20.px),
      alignment: Alignment.center,
      child: Text('展示你的选择',style: Theme.of(context).textTheme.display3,),
    );
  }

  Widget buildBody(){
    return Expanded(
      child: Consumer<JSFilterViewMOdel>(
        builder: (ctx,filterVM,child){
          return ListView(
            children: <Widget>[
              buildListTile("无谷蛋白", "1111111111",filterVM.isGlutenFree, (value){filterVM.isGlutenFree = value;}),
              buildListTile("不含乳糖", "1111111111", filterVM.isLactoseFree,(value){filterVM.isLactoseFree = value;}),
              buildListTile("素食主义", "1111111111", filterVM.isVegan,(value){filterVM.isVegan = value;}),
              buildListTile("严格素食", "1111111111", filterVM.isVegetarian,(value){filterVM.isVegetarian = value;}),
            ],
          );
        },

      ),
    );
  }

  Widget buildListTile(String title,String subTitle,bool value,Function function){
    return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: Switch(value: value, onChanged: function),
    );
  }

}
