import 'package:flutter/material.dart';
import 'button.dart';

class TitleTop extends StatelessWidget {
  final String title;
  final String subTitle;
  final button;
  TitleTop({
    this.title,
    this.subTitle,
    this.button,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: Colors.green,
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                children: <Widget>[
                  Text(subTitle),
                  SizedBox(
                    height: 1,
                  )
                ],
              ),
            ],
          ),
          button ?? Container(), 
          Icon(Icons.refresh),
        ],
      ),
    );
  }
}
