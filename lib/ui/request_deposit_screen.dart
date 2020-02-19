import 'package:flutter/material.dart';
import '../util/app_bar.dart';
import '../util/button.dart';
import '../util/title_child.dart';
import '../config/const.dart' as global;

class RequestDeposit extends StatefulWidget {
  @override
  _RequestDepositState createState() => _RequestDepositState();
}

class _RequestDepositState extends State<RequestDeposit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        
        child: Container(
          color: Colors.greenAccent,
          child: Center(
            child: Column(
              children: <Widget>[
                Card(
                  margin: EdgeInsets.only(top: 5),
                  elevation: 5,
                  child: Container(
                    width: 300,
                    height: 265,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Request Deposit',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Bank:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 300,
                          height: 45,
                          // decoration: BoxDecoration(
                          //   // border: Border.all(),
                          //   borderRadius: BorderRadius.all(Radius.circular(5))
                          // ),
                          child: DropdownButton(
                            items: null,
                            onChanged: null,
                            hint: Text('Pilih Bank'),
                            isExpanded: true,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Nominal:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 40,
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 1, left: 10),
                              hintText: 'Masukkan Nominal',
                              border: OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(5.0),
                                borderSide: new BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: <Widget>[
                            MyButton(
                              title: 'Reset',
                              verticalPadding: 11.0,
                              function: () {},
                              horizontalPadding: 30.0,
                            ),
                            SizedBox(width: 2),
                            MyButton(
                              title: 'Submit',
                              verticalPadding: 11.0,
                              function: () {},
                              horizontalPadding: 30.0,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                TitleChild(
                  leading: Icon(Icons.access_time),
                  title: 'Penjelasan Form',
                  trailing: Icon(Icons.add_to_queue),
                ),
                Card(
                  elevation: 5,
                  child: Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.green,
                          child: Center(
                            child: Text(
                              '06/02',
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'TRANSFER: ',
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text('Rp 50.170,-')
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'BANK: ',
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text('BRI / 01000234455 /')
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'STATUS: ',
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text('SUKSES')
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.green,
                          child: Center(
                            child: Text(
                              '06/02',
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'TRANSFER: ',
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text('Rp 50.170,-')
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'BANK: ',
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text('BRI / 01000234455 /')
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'STATUS: ',
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text('SUKSES')
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.green,
                          child: Center(
                            child: Text(
                              '06/02',
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'TRANSFER: ',
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text('Rp 50.170,-')
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'BANK: ',
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text('BRI / 01000234455 /')
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'STATUS: ',
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text('SUKSES')
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
