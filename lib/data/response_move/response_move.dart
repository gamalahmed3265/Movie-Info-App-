import 'package:movie_info_app/domain/model/move_model.dart';

class ResponseMove extends MoiveModel {
  const ResponseMove(
      {required super.id,
      required super.year,
      required super.numofRatings,
      required super.criticsReview,
      required super.metaScoreRating,
      required super.rating,
      required super.genra,
      required super.plot,
      required super.title,
      required super.poster,
      required super.backdrop,
      required super.cast});

  factory ResponseMove.fromJson(Map<String, dynamic> json) => ResponseMove(
      id: json["id"],
      year: json["year"],
      numofRatings: json["numofRatings"],
      criticsReview: json["criticsReview"],
      metaScoreRating: json["metaScoreRating"],
      rating: json["rating"],
      genra: json["genra"],
      plot: json["plot"],
      title: json["title"],
      poster: json["poster"],
      backdrop: json["backdrop"],
      cast: json["cast"]);

  Map<String, dynamic> toJson(ResponseMove responseMove) => <String, dynamic>{
        "id": responseMove.id,
        "year": responseMove.year,
        "numofRatings": responseMove.numofRatings,
        "criticsReview": responseMove.criticsReview,
        "metaScoreRating": responseMove.metaScoreRating,
        "rating": responseMove.rating,
        "genra": responseMove.genra,
        "plot": responseMove.plot,
        "title": responseMove.title,
        "poster": responseMove.poster,
        "backdrop": responseMove.backdrop,
        "cast": responseMove.cast
      };
}
