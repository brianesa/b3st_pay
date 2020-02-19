import 'package:best_pay/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';
import '../config/const.dart' as global;

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  @override
  Widget build(BuildContext context) {
    FocusNode myFocusNode = new FocusNode();
    return Drawer(
      // width: 300,
      // color: Colors.white,

      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          StickyHeader(
            header: Container(
              height: 150,
              child: Container(
                color: global.Color().drawerHeader,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Icon(Icons.person, size: 36),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 20,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Septian',
                                style: TextStyle(fontSize: 16),
                                textAlign: TextAlign.start,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.check_circle,
                                    size: 12,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'FREE MEMBER',
                                    style: TextStyle(fontSize: 11),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      margin: const EdgeInsets.only(right: 10, left: 10),
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(primaryColor: Colors.black),
                        child: TextFormField(
                          focusNode: myFocusNode,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.black45,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 20),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(5.0),
                              borderSide: new BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            labelText: 'Search...',
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            suffixIcon: Icon(
                              Icons.search,
                            ),
                          ),
                          cursorColor: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            content: Column(
              children: <Widget>[
                Container(
                  height: 45,
                  color: Colors.black45,
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft,
                    child: Text('MENU UTAMA'),
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                ListTile(
                  title: Text('Home/Dashboard'),
                  leading: Icon(Icons.home),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                Divider(
                  thickness: 1,
                ),
                ExpansionTile(
                  leading: Icon(Icons.star),
                  title: Text('Menu Favorit'),
                  children: <Widget>[
                    ListTile(
                      title: Text('Menu Favorit'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Rekap/Report'),
                      onTap: () {
                        Navigator.popAndPushNamed(context, Routes.tableReportMutasi);
                      },
                    ),
                    ListTile(
                      title: Text('Bonus-bonus'),
                      onTap: () {
                        
                      },
                    ),
                  ],
                  // onTap: () {
                  //   // Update the state of the app
                  //   // ...
                  //   // Then close the drawer
                  //   Navigator.pop(context);
                  // },
                ),
                Divider(
                  thickness: 1,
                ),
                ListTile(
                  leading: Icon(Icons.border_all),
                  title: Text('Request Deposit'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    navigateRequestDeposit();
                  },
                ),
                Divider(
                  thickness: 1,
                ),
                ExpansionTile(
                  leading: Icon(Icons.money_off),
                  title: Text('Transaksi'),
                  children: <Widget>[
                    ListTile(
                      title: Text('Menu Favorit'),
                      onTap: () {
                        // Update the state of the app
                        // ...
                        // Then close the drawer
                        Navigator.popAndPushNamed(context, Routes.tablePascaBayar);
                      },
                    ),
                  ],
                  // onTap: () {
                  //   // Update the state of the app
                  //   // ...
                  //   // Then close the drawer
                  //   Navigator.pop(context);
                  // },
                ),
                Divider(
                  thickness: 1,
                ),
                ExpansionTile(
                  leading: Icon(Icons.book),
                  title: Text('Rekap/Report'),
                  
                ),
                Divider(
                  thickness: 1,
                ),
                ListTile(
                  leading: Icon(Icons.airplanemode_active),
                  title: Text('Bonus-bonus'),
                  onTap: (){
                    Navigator.popAndPushNamed(context, Routes.tablePraBayar);
                  },
                ),
                Divider(
                  thickness: 1,
                ),
                ExpansionTile(
                  leading: Icon(Icons.person),
                  title: Text('Data Profile'),
                ),
                Divider(
                  thickness: 1,
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text('Harga produk'),
                  onTap: (){
                    Navigator.popAndPushNamed(context, Routes.tableHargaPulsa);
                  },
                ),
                Divider(
                  thickness: 1,
                ),
                ExpansionTile(
                  leading: Icon(Icons.cloud),
                  title: Text('Download Area'),
                ),
                Divider(
                  thickness: 1,
                ),
                ExpansionTile(
                  leading: Icon(Icons.library_books),
                  title: Text('Tutorial/Panduan'),
                ),
                Divider(
                  thickness: 1,
                ),
                ExpansionTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
                Divider(
                  thickness: 1,
                ),
                ListTile(
                  leading: Icon(Icons.chat),
                  title: Text('Hubungi Kami'),
                ),
                Divider(
                  thickness: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  navigateRequestDeposit() {
    return Navigator.popAndPushNamed(context, Routes.requestDepositPage);
  }
}
