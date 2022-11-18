import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:minggu10_moviedb/model/popular_movies.dart';

class ApiProvider {
  String apiKey = 'edfb8588c2da39cbe195f9c26d65f79f';
  String baseUrl = 'https://api.themoviedb.org/3';

  late int id;

  Future<PopularMovies> getPopularMovies() async {
    var response = await http.get(Uri.parse("${baseUrl}api_key=$apiKey"));
    return PopularMovies.fromJson(json.decode(response.body));
  }
}
