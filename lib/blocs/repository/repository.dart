import 'dart:convert';

import 'package:best_pay/blocs/model/movie_model.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class Repository {
  Dio dio = new Dio();
  Future<MovieModel> fetchMovie() async {
    final Response result =
        await dio.get('http://www.omdbapi.com/?apikey=e17a1e64&t=joker');
    if (result.statusCode != 200) throw Exception();
    return MovieModel.fromJson(result.data);
  }
}
