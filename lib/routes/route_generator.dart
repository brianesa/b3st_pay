import 'package:best_pay/ui/request_deposit_screen.dart';
import 'package:best_pay/ui/table_harga_pulsa.dart';
import 'package:flutter/material.dart';
import '../ui/login_screen.dart';
import '../ui/dashboard_screen.dart';
import 'routes.dart';
import '../ui/proses_pembelian_screen.dart';
import '../ui/table_pra_bayar.dart';
import '../ui/proses_pembayaran_screen.dart';
import '../ui/table_pasca_bayar.dart';
import '../ui/table_report_mutasi.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case Routes.initialPage:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(
              // title: 'HomePage',
              ),
        );
      case Routes.secondPage:
        // if (args is String) {
        return MaterialPageRoute(
          builder: (context) => MyHomePage(
              // title: args,
              ),
        );
      case Routes.pembelianPage:
        // if (args is String) {
        return MaterialPageRoute(
          builder: (context) => ProsesPembelianScreen(
              // title: args,
              ),
        );
      case Routes.pembayaranPage:
        return MaterialPageRoute(
          builder: (context) => ProsesPembayaranScreen(),
        );
      case Routes.requestDepositPage:
        return MaterialPageRoute(
          builder: (context) => RequestDeposit(),
        );
      case Routes.tablePraBayar:
        return MaterialPageRoute(
          builder: (context) => DataTableDemo(),
        );
      case Routes.tablePascaBayar:
        return MaterialPageRoute(
          builder: (context) => TablePascaBayar(),
        );
      case Routes.tableReportMutasi:
        return MaterialPageRoute(
          builder: (context) => TableReportMutasi(),
        );
        case Routes.tableHargaPulsa:
        return MaterialPageRoute(
          builder: (context) => TableHargaPulsa(),
        );
      // }
      // return error route if the argument type is not right
      // return _errorRoute();
      default:
        // return error route if named route was not found
        return _errorRoute();
    }
  }

  // _errorRoute is just a screen with error.
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
