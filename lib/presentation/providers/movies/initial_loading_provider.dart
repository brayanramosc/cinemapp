import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cinemapp/presentation/providers/providers.dart';

final initialLoadingProvider = Provider<bool>((ref) {
  final bool hasSlideShowMovies = ref.watch(movieSlideShowProvider).isEmpty;
  final bool hasNowPlayingMovies = ref.watch(nowPlayingMoviesProvider).isEmpty;
  final bool hasPopularMovies = ref.watch(popularMoviesProvider).isEmpty;
  final bool hasUpcomingMovies = ref.watch(upcomingMoviesProvider).isEmpty;
  final bool hasTopRatedMovies = ref.watch(topRatedMoviesProvider).isEmpty;

  if (hasSlideShowMovies ||
      hasNowPlayingMovies ||
      hasPopularMovies ||
      hasUpcomingMovies ||
      hasTopRatedMovies) return true;

  return false;
});
