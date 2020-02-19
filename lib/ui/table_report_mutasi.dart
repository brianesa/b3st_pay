import 'dart:async';
import 'dart:convert';
import 'package:best_pay/util/drawer.dart';

import '../util/app_bar.dart';

import 'package:flutter/foundation.dart';
import '../util/button.dart';
import '../util/title_top.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<Result>> fetchResults(http.Client client) async {
  final response = await client.get('https://api.myjson.com/bins/j5xau');

  // Use the compute function to run parseResults in a separate isolate
  return compute(parseResults, response.body);
}

// A function that will convert a response body into a List<Result>
List<Result> parseResults(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Result>((json) => Result.fromJson(json)).toList();
}

class Result {
  final String sex;
  final String region;
  final int year;
  final String statistic;
  final String value;
  int no;

  Result(
      {this.sex, this.region, this.year, this.statistic, this.value, this.no});

  bool selected = false;

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      no: 0,
      sex: json['sex'] as String,
      region: json['region'] as String,
      year: json['year'] as int,
      statistic: json['statistic'] as String,
      value: json['value'] as String,
    );
  }
}

class ResultsDataSource extends DataTableSource {
  final List<Result> _results;
  ResultsDataSource(this._results);

  void _sort<T>(Comparable<T> getField(Result d), bool ascending) {
    _results.sort((Result a, Result b) {
      if (!ascending) {
        final Result c = a;
        a = b;
        b = c;
      }
      final Comparable<T> aValue = getField(a);
      final Comparable<T> bValue = getField(b);
      return Comparable.compare(aValue, bValue);
    });
    notifyListeners();
  }

  int _selectedCount = 0;

  @override
  DataRow getRow(int index) {
    assert(index >= 0);
    if (index >= _results.length) return null;
    final Result result = _results[index];
    return DataRow.byIndex(index: index,

        // selected: result.selected,
        // onSelectChanged: (bool value) {
        //   if (result.selected != value) {
        //     _selectedCount += value ? 1 : -1;
        //     assert(_selectedCount >= 0);
        //     result.selected = value;
        //     notifyListeners();
        //   }
        // },
        cells: <DataCell>[
          DataCell(
              Align(
                  alignment: Alignment.center,
                  child: Text('${(index + 1).toString()}')), onTap: () {
            return print(index);
          }),
          DataCell(Text('${result.sex}'), onTap: () {
            return print(index);
          }),
          DataCell(Text('${result.region}'), onTap: () {
            return print(index);
          }),
          DataCell(Text('${result.year}'), onTap: () {
            return print(index);
          }),
          DataCell(
              Align(
                alignment: Alignment.centerLeft,
                child: Text('${result.value}'),
              ), onTap: () {
            return print(index);
          }),
          DataCell(
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${result.value}',
                    textAlign: TextAlign.start,
                  )), onTap: () {
            return print(index);
          }),
          DataCell(Text('${result.year}'), onTap: () {
            return print(index);
          }),
          DataCell(Text('${result.year}'), onTap: () {
            return print(index);
          }),
        ]);
  }

  @override
  int get rowCount => _results.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedCount;

  void _selectAll(bool checked) {
    for (Result result in _results) result.selected = checked;
    _selectedCount = checked ? _results.length : 0;
    notifyListeners();
  }
}

class TableReportMutasi extends StatefulWidget {
  final ResultsDataSource _resultsDataSource = ResultsDataSource([]);
  final bool isLoaded = false;

  @override
  _TableReportMutasiState createState() => _TableReportMutasiState();
}

class _TableReportMutasiState extends State<TableReportMutasi> {
  ResultsDataSource _resultsDataSource = ResultsDataSource([]);
  bool isLoaded = false;
  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;
  int _sortColumnIndex;
  bool _sortAscending = true;

  void _sort<T>(
      Comparable<T> getField(Result d), int columnIndex, bool ascending) {
    _resultsDataSource._sort<T>(getField, ascending);
    setState(() {
      _sortColumnIndex = columnIndex;
      _sortAscending = ascending;
    });
  }

  Future<void> getData() async {
    final results = await fetchResults(http.Client());
    if (!isLoaded) {
      setState(() {
        _resultsDataSource = ResultsDataSource(results);
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
        appBar: MyAppBar(),
        drawer: SideDrawer(),
        body: Container(
          color: Colors.greenAccent,
          child:
              ListView(padding: const EdgeInsets.all(20.0), children: <Widget>[
            TitleTop(
              title: 'Report',
              subTitle: 'Mutasi',
              button: MyButton(
                function: () {},
                title: 'Download',
                horizontalPadding: 20.0,
              ),
            ),
            Divider(),
            PaginatedDataTable(
                horizontalMargin: 2.0,
                columnSpacing: 20.0,
                header: const Text('Data Mutasi'),
                rowsPerPage: _rowsPerPage,
                onRowsPerPageChanged: (int value) {
                  setState(() {
                    _rowsPerPage = value;
                  });
                },
                sortColumnIndex: _sortColumnIndex,
                sortAscending: _sortAscending,
                onSelectAll: _resultsDataSource._selectAll,
                columns: <DataColumn>[
                  DataColumn(
                    label: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: const Text(
                        'No',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    numeric: true,
                    // onSort: (int columnIndex, bool ascending) => _sort<String>(
                    //     (Result d) => d.no, columnIndex, ascending),
                  ),
                  DataColumn(
                    label: const Text(
                      'Tanggal',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onSort: (int columnIndex, bool ascending) => _sort<String>(
                        (Result d) => d.sex, columnIndex, ascending),
                  ),
                  DataColumn(
                      label: const Text(
                        'Type',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      numeric: true,
                      onSort: (int columnIndex, bool ascending) =>
                          _sort<String>(
                              (Result d) => d.region, columnIndex, ascending)),
                  DataColumn(
                    label: const Text(
                      'Jumlah',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    numeric: true,
                    onSort: (int columnIndex, bool ascending) => _sort<num>(
                        (Result d) => d.year, columnIndex, ascending),
                  ),
                  DataColumn(
                    label: Padding(
                      padding: const EdgeInsets.only(right: 200.0),
                      child: const Text(
                        'Saldo',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    numeric: true,
                    onSort: (int columnIndex, bool ascending) => _sort<String>(
                        (Result d) => d.statistic, columnIndex, ascending),
                  ),
                  DataColumn(
                      label: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: const Text(
                          'Trx_type',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      numeric: true,
                      onSort: (int columnIndex, bool ascending) =>
                          _sort<String>(
                              (Result d) => d.value, columnIndex, ascending)),
                  DataColumn(
                    label: const Text(
                      'Trxid',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    numeric: true,
                    onSort: (int columnIndex, bool ascending) => _sort<num>(
                        (Result d) => d.year, columnIndex, ascending),
                  ),
                  DataColumn(
                    label: const Text(
                      'Keterangan',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    numeric: true,
                    onSort: (int columnIndex, bool ascending) => _sort<num>(
                        (Result d) => d.year, columnIndex, ascending),
                  ),
                ],
                source: _resultsDataSource),
          ]),
        ));
  }
}
