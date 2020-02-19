import 'package:flutter/material.dart';
import '../util/app_bar.dart';
import '../util/drawer.dart';
import '../util/button.dart';
import 'package:sticky_headers/sticky_headers.dart';
import '../util/title_child.dart';
import '../util/title_top.dart';

class ProsesPembelianScreen extends StatefulWidget {
  @override
  _ProsesPembelianScreenState createState() => _ProsesPembelianScreenState();
}

class _ProsesPembelianScreenState extends State<ProsesPembelianScreen> {
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
                        title: 'Pembelian',
                        subTitle: 'Pulsa Reguler',
                      ),
                      Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Ketik nomor HP dahulu, lalu pilih/klik produk',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                      ),
                      Card(
                        elevation: 5,
                        child: Container(
                          width: 300,
                          height: 90,
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            width: 260,
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
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
                                hintText: 'Masukkan Nomor HP Tujuan',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
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
                content: SingleChildScrollView(
                  child: Container(
                    color: Colors.greenAccent,
                    child: Column(
                      children: <Widget>[
                        Card(
                          elevation: 5,
                          child: Container(
                            width: 300,
                            child: Container(
                              margin: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text('10/02/2020 08:40:03'),
                                      Text(
                                        'SUKSES',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '0891011121314',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('(15) INDOSAT 5K'),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      MyButton(
                                        title: 'Detail',
                                        horizontalPadding: 5.0,
                                        function: (){},
                                      ),
                                      MyButton(
                                        title: 'Ulangi?',
                                        horizontalPadding: 5.0,
                                        function: (){},
                                      ),
                                      MyButton(
                                        title: 'Simpan Kontak',
                                        horizontalPadding: 5.0,
                                        function: (){},
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          elevation: 5,
                          child: Container(
                            width: 300,
                            child: Container(
                              margin: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text('10/02/2020 08:40:03'),
                                      Text(
                                        'SUKSES',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '0891011121314',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('(15) INDOSAT 5K'),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      MyButton(
                                        title: 'Detail',
                                        horizontalPadding: 5.0,
                                        function: (){},
                                      ),
                                      MyButton(
                                        title: 'Ulangi?',
                                        horizontalPadding: 5.0,
                                        function: (){},
                                      ),
                                      MyButton(
                                        title: 'Simpan Kontak',
                                        horizontalPadding: 5.0,
                                        function: (){},
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          elevation: 5,
                          child: Container(
                            width: 300,
                            child: Container(
                              margin: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text('10/02/2020 08:40:03'),
                                      Text(
                                        'SUKSES',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '0891011121314',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('(15) INDOSAT 5K'),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      MyButton(
                                        title: 'Detail',
                                        horizontalPadding: 5.0,
                                        function: (){},
                                      ),
                                      MyButton(
                                        title: 'Ulangi?',
                                        horizontalPadding: 5.0,
                                        function: (){},
                                      ),
                                      MyButton(
                                        title: 'Simpan Kontak',
                                        horizontalPadding: 5.0,
                                        function: (){},
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          elevation: 5,
                          child: Container(
                            width: 300,
                            child: Container(
                              margin: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text('10/02/2020 08:40:03'),
                                      Text(
                                        'SUKSES',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '0891011121314',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('(15) INDOSAT 5K'),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      MyButton(
                                        title: 'Detail',
                                        horizontalPadding: 5.0,
                                        function: (){},
                                      ),
                                      MyButton(
                                        title: 'Ulangi?',
                                        horizontalPadding: 5.0,
                                        function: (){},
                                      ),
                                      MyButton(
                                        title: 'Simpan Kontak',
                                        horizontalPadding: 5.0,
                                        function: (){},
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
