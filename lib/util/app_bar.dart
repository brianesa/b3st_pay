import 'package:flutter/material.dart';
import '../config/const.dart' as global;

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
final tabBar;
double height;

MyAppBar({this.tabBar, this.height});

  _MyAppBarState createState() => _MyAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight * (height ?? 1));
}

class _MyAppBarState extends State<MyAppBar> with SingleTickerProviderStateMixin {

  TabController controller;

   @override
  void initState() {
    controller = new TabController(vsync: this, length: 3);
    //tambahkan SingleTickerProviderStateMixin pada class _HomeState
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  var tabBar;
  _MyAppBarState({this.tabBar});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        bottom: widget.tabBar,
        backgroundColor: global.Color().appBar,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text('Rp 975,-'),
        ),
        actions: <Widget>[
          SizedBox(width: 15),
          Icon(Icons.alarm),
          SizedBox(width: 20),
          Icon(Icons.person),
          SizedBox(width: 20),
          Icon(Icons.power),
          SizedBox(width: 20),
        ],
      );
  }
}