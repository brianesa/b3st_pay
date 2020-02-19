import 'package:flutter/material.dart';
import '../config/const.dart' as global;

class MyButton extends StatefulWidget {
  final title;
  var function;
  var horizontalPadding;
  var verticalPadding;

  MyButton({this.title, this.function, this.horizontalPadding, this.verticalPadding});

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  // GlobalKey _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      // key: _globalKey,
      child: Text(widget.title),
      color: global.Color().appBar,
      textColor: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: widget.horizontalPadding ?? 40, vertical: widget.verticalPadding ?? 13),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      onPressed: widget.function,
    );
  }
}
