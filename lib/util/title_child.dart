import 'package:flutter/material.dart';

class TitleChild extends StatelessWidget {
  final title;
  final leading;
  final trailing;
  TitleChild({this.title, this.leading, this.trailing});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        width: 300,
        height: 50,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                leading,
                SizedBox(
                  width: 5,
                ),
                Text(title),
                SizedBox(
                  width: 110,
                ),
              ],
            ),
            trailing ?? Container(),
          ],
        ),
      ),
    );
  }
}
