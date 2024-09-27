import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cinemapp/domain/entity/movie.dart';
import 'package:cinemapp/presentation/providers/movies/movie_provider.dart';

final movieSlideShowProvider = Provider<List<Movie>>((ref) {
  final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);

  if (nowPlayingMovies.isEmpty) return [];
  return nowPlayingMovies.sublist(0,6);
});
