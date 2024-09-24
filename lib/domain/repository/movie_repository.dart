import 'package:cinemapp/domain/entity/movie.dart';

abstract class MovieRepository {
  Future<List<Movie>> getNowPlaying({int page = 1});
}
