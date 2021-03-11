import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movies/model/Movies.dart';

List types = [
  "now_playing",
  "popular",
  "top_rated",
];

class MoviesClient {
  Future<Movies> getNowPlayingMovies() async {
    final String url =
        'https://api.themoviedb.org/3/movie/now_playing?api_key=1b5bda39abf630f836cdabe3be6b46d6&language=en-US&page=1';
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);

      return Movies.fromJson(json);
    } else {
      throw Exception('Error Loading Movies');
    }
  }

  Future<Movies> getTopTatedMovies() async {
    final String url =
        "https://api.themoviedb.org/3/movie/top_rated?api_key=1b5bda39abf630f836cdabe3be6b46d6&language=en-US&page=1";
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);

      return Movies.fromJson(json);
    } else {
      throw Exception('Error Loading Movies');
    }
  }

  Future<Movies> getPopularMovies() async {
    final String url =
        "https://api.themoviedb.org/3/movie/popular?api_key=1b5bda39abf630f836cdabe3be6b46d6&language=en-US&page=1";
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);

      return Movies.fromJson(json);
    } else {
      throw Exception('Error Loading Movies');
    }
  }

  Future<Movies> getUpComingMovies() async {
    final String url =
        "https://api.themoviedb.org/3/movie/upcoming?api_key=1b5bda39abf630f836cdabe3be6b46d6&language=en-US&page=1";
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);

      return Movies.fromJson(json);
    } else {
      throw Exception('Error Loading Movies');
    }
  }
}
