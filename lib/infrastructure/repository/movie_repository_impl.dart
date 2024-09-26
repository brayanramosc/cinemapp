import 'package:cinemapp/domain/datasource/movie_datasource.dart';
import 'package:cinemapp/domain/entity/movie.dart';
import 'package:cinemapp/domain/repository/movie_repository.dart';

class MovieRepositoryImpl extends MovieRepository {
  final MovieDataSource dataSource;
  MovieRepositoryImpl(this.dataSource);

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return dataSource.getNowPlaying(page: page);
  }
}
