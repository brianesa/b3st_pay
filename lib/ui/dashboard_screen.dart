import 'package:flutter/material.dart';
import '../util/drawer.dart';
import '../config/const.dart' as global;
import '../util/dashboard_menu_tile.dart';
import '../util/app_bar.dart';
import '../routes/routes.dart';

class MyHomePage extends StatefulWidget {
  // MyHomePage({Key key, this.title}) : super(key: key);

  // final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        tabBar: new TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(
              text: "Pembelian",
            ),
            Tab(
              text: "Pembayaran",
            ),
            Tab(
              text: "Game",
            ),
          ],
        ),
        height: 2,
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          GridCard(
            map: pembelian,
            function: () => navigatePembelianPage(),
          ),
          GridCard(
            map: pembayaran,
            function: () => navigatePembayaranPage(),
          ),
          GridCard(
            map: game,
            function: () => navigatePembelianPage(),
          ),
        ],
      ),
      drawer: SideDrawer(),
    );
  }

  navigatePembelianPage() {
    return Navigator.pushNamed(context, Routes.pembelianPage);
  }

  navigatePembayaranPage() {
    return Navigator.pushNamed(context, Routes.pembayaranPage);
  }

  
}
