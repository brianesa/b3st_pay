import 'package:flutter/material.dart';
import './ui/login_screen.dart';
import './ui/dashboard_screen.dart';
import './routes/route_generator.dart';
import 'routes/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './blocs/bloc/movie_bloc.dart';
import './blocs/repository/repository.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyBloc(Repository()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: Routes.initialPage,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
