import 'package:flutter/material.dart';
import '../util/app_bar.dart';
import '../util/drawer.dart';
import '../util/button.dart';
import 'package:sticky_headers/sticky_headers.dart';
import '../util/title_child.dart';
import '../util/title_top.dart';

class ProsesPembayaranScreen extends StatefulWidget {
  @override
  _ProsesPembayaranScreenState createState() => _ProsesPembayaranScreenState();
}

class _ProsesPembayaranScreenState extends State<ProsesPembayaranScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: SideDrawer(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              StickyHeader(
                header: Container(
                  color: Colors.greenAccent,
                  child: Column(
                    children: <Widget>[
                      TitleTop(
                        title: 'Bayar',
                        subTitle: 'PLN Bulanan',
                      ),
                      Divider(
                        thickness: 1.0,
                      ),
                      Card(
                        elevation: 5,
                        child: Container(
                          width: 300,
                          height: 200,
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                width: 260,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(5.0),
                                      borderSide: new BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                    hintText: 'Nomor HP Pembeli',
                                    labelStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                width: 260,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(5.0),
                                      borderSide: new BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                    hintText: 'ID Pelanggan',
                                    labelStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 260,
                                child: MyButton(
                                  title: 'Cek Tagihan',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      TitleChild(
                        leading: Icon(Icons.refresh),
                        title: 'Riwayat Transaksi',
                      )
                    ],
                  ),
                ),
                content: Container(
                  color: Colors.greenAccent,
                  height: 300,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
