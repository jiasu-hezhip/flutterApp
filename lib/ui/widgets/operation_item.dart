import 'package:flutter/material.dart';
import 'package:foodpj/core/extension/int_extension.dart';

class JSOperationItem extends StatelessWidget {

  final Widget _icon;
  final String _title;

  const JSOperationItem(this._icon, this._title);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.px,
//      color: Colors.red,
      padding: EdgeInsets.symmetric(vertical: 12.px),
      child: Row(
        children: <Widget>[
          _icon,
          SizedBox(width: 3.px,),
          Text(_title)
        ],
      ),
    );
  }
}
