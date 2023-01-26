import 'package:equatable/equatable.dart';

class MoiveModel extends Equatable {
  final int id, year, numofRatings, criticsReview, metaScoreRating;
  final double rating;
  final List<String> genra;
  final String plot, title, poster, backdrop;
  final List<Map> cast;
  const MoiveModel({
    required this.id,
    required this.year,
    required this.numofRatings,
    required this.criticsReview,
    required this.metaScoreRating,
    required this.rating,
    required this.genra,
    required this.plot,
    required this.title,
    required this.poster,
    required this.backdrop,
    required this.cast,
  });

  @override
  List<Object?> get props => [
        id,
        year,
        numofRatings,
        criticsReview,
        metaScoreRating,
        rating,
        genra,
        plot,
        title,
        poster,
        backdrop,
        cast
      ];
}
