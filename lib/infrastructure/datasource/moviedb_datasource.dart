import 'package:dio/dio.dart';

import 'package:cinemapp/domain/entity/movie.dart';
import 'package:cinemapp/config/constants/environments.dart';
import 'package:cinemapp/domain/datasource/movie_datasource.dart';
import 'package:cinemapp/infrastructure/mappers/movie_mapper.dart';
import 'package:cinemapp/infrastructure/models/moviedb/moviedb_response.dart';

class MoviedbDatasource extends MovieDataSource {
  final dio = Dio(BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Environment.theMovieDbKey,
        'language': 'es-CO'
      }));

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final response = await dio.get('/movie/now_playing');
    final movieDBResponse = MovieDbResponse.fromJson(response.data);
    final List<Movie> movies = movieDBResponse.results
        .where((moviedb) => moviedb.posterPath != 'no-poster')
        .map((moviedb) => MovieMapper.movieDBToEntity(moviedb))
        .toList();

    return movies;
  }
}
