import 'package:cinemapp/infrastructure/datasource/moviedb_datasource.dart';
import 'package:cinemapp/infrastructure/repository/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl(MoviedbDatasource());
});
