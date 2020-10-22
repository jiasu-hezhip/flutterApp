import 'package:flutter/material.dart';
import 'package:foodpj/core/extension/int_extension.dart';
import 'package:foodpj/ui/pages/filter/filter.dart';
class JSHomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.px,
      child: Drawer(
        child: Column(
          children: <Widget>[
            buildHeader(context),
            buildbody(context,Icon(Icons.restaurant), "进餐",(){
              Navigator.of(context).pop();
            }),
            buildbody(context,Icon(Icons.settings), "过滤",(){
              Navigator.of(context).pushNamed(JSFilterScreen.routeName);
            }),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context){
    return Container(
      height: 120.px,
      width: double.infinity,
      color: Colors.orange,
      margin: EdgeInsets.only(bottom: 20.px),
      alignment: Alignment(0,0.5),
      child: Text("aaaaa",style: Theme.of(context).textTheme.display4.copyWith(fontWeight: FontWeight.w400),),
    );
  }


  Widget buildbody(BuildContext context,Widget icon ,String text,Function function){
    return ListTile(
      leading: icon,
      title: Text(text,style: Theme.of(context).textTheme.display4,),
      onTap: function,
    );
  }

}
