// our demo data movie data
import 'package:movie_info_app/domain/model/move_model.dart';

class LocalDataResource {
  static List<MoiveModel> movies = [
    MoiveModel(
      id: 1,
      title: "Bloodshot",
      year: 2020,
      poster: "assets/images/poster_1.jpg",
      backdrop: "assets/images/backdrop_1.jpg",
      numofRatings: 150212,
      rating: 7.3,
      criticsReview: 50,
      metaScoreRating: 76,
      genra: const ["Action", "Drama"],
      plot: plotText,
      cast: const [
        {
          "orginalName": "James Mangold",
          "movieName": "Director",
          "image": "assets/images/actor_1.png",
        },
        {
          "orginalName": "Matt Damon",
          "movieName": "Carroll",
          "image": "assets/images/actor_2.png",
        },
        {
          "orginalName": "Christian Bale",
          "movieName": "Ken Miles",
          "image": "assets/images/actor_3.png",
        },
        {
          "orginalName": "Caitriona Balfe",
          "movieName": "Mollie",
          "image": "assets/images/actor_4.png",
        },
      ],
    ),
    MoiveModel(
      id: 2,
      title: "Ford v Ferrari ",
      year: 2019,
      poster: "assets/images/poster_2.jpg",
      backdrop: "assets/images/backdrop_2.jpg",
      numofRatings: 150212,
      rating: 8.2,
      criticsReview: 50,
      metaScoreRating: 76,
      genra: const ["Action", "Biography", "Drama"],
      plot: plotText,
      cast: const [
        {
          "orginalName": "James Mangold",
          "movieName": "Director",
          "image": "assets/images/actor_1.png",
        },
        {
          "orginalName": "Matt Damon",
          "movieName": "Carroll",
          "image": "assets/images/actor_2.png",
        },
        {
          "orginalName": "Christian Bale",
          "movieName": "Ken Miles",
          "image": "assets/images/actor_3.png",
        },
        {
          "orginalName": "Caitriona Balfe",
          "movieName": "Mollie",
          "image": "assets/images/actor_4.png",
        },
      ],
    ),
    MoiveModel(
      id: 1,
      title: "Onward",
      year: 2020,
      poster: "assets/images/poster_3.jpg",
      backdrop: "assets/images/backdrop_3.jpg",
      numofRatings: 150212,
      rating: 7.6,
      criticsReview: 50,
      metaScoreRating: 79,
      genra: const ["Action", "Drama"],
      plot: plotText,
      cast: const [
        {
          "orginalName": "James Mangold",
          "movieName": "Director",
          "image": "assets/images/actor_1.png",
        },
        {
          "orginalName": "Matt Damon",
          "movieName": "Carroll",
          "image": "assets/images/actor_2.png",
        },
        {
          "orginalName": "Christian Bale",
          "movieName": "Ken Miles",
          "image": "assets/images/actor_3.png",
        },
        {
          "orginalName": "Caitriona Balfe",
          "movieName": "Mollie",
          "image": "assets/images/actor_4.png",
        },
      ],
    ),
    MoiveModel(
      id: 1,
      title: "Bloodshot",
      year: 2020,
      poster: "assets/images/poster_1.jpg",
      backdrop: "assets/images/backdrop_1.jpg",
      numofRatings: 150212,
      rating: 7.3,
      criticsReview: 50,
      metaScoreRating: 76,
      genra: const ["Action", "Drama"],
      plot: plotText,
      cast: const [
        {
          "orginalName": "James Mangold",
          "movieName": "Director",
          "image": "assets/images/actor_1.png",
        },
        {
          "orginalName": "Matt Damon",
          "movieName": "Carroll",
          "image": "assets/images/actor_2.png",
        },
        {
          "orginalName": "Christian Bale",
          "movieName": "Ken Miles",
          "image": "assets/images/actor_3.png",
        },
        {
          "orginalName": "Caitriona Balfe",
          "movieName": "Mollie",
          "image": "assets/images/actor_4.png",
        },
      ],
    ),
    MoiveModel(
      id: 2,
      title: "Ford v Ferrari ",
      year: 2019,
      poster: "assets/images/poster_2.jpg",
      backdrop: "assets/images/backdrop_2.jpg",
      numofRatings: 150212,
      rating: 8.2,
      criticsReview: 50,
      metaScoreRating: 76,
      genra: const ["Action", "Biography", "Drama"],
      plot: plotText,
      cast: const [
        {
          "orginalName": "James Mangold",
          "movieName": "Director",
          "image": "assets/images/actor_1.png",
        },
        {
          "orginalName": "Matt Damon",
          "movieName": "Carroll",
          "image": "assets/images/actor_2.png",
        },
        {
          "orginalName": "Christian Bale",
          "movieName": "Ken Miles",
          "image": "assets/images/actor_3.png",
        },
        {
          "orginalName": "Caitriona Balfe",
          "movieName": "Mollie",
          "image": "assets/images/actor_4.png",
        },
      ],
    ),
    MoiveModel(
      id: 1,
      title: "Onward",
      year: 2020,
      poster: "assets/images/poster_3.jpg",
      backdrop: "assets/images/backdrop_3.jpg",
      numofRatings: 150212,
      rating: 7.6,
      criticsReview: 50,
      metaScoreRating: 79,
      genra: const ["Action", "Drama"],
      plot: plotText,
      cast: const [
        {
          "orginalName": "James Mangold",
          "movieName": "Director",
          "image": "assets/images/actor_1.png",
        },
        {
          "orginalName": "Matt Damon",
          "movieName": "Carroll",
          "image": "assets/images/actor_2.png",
        },
        {
          "orginalName": "Christian Bale",
          "movieName": "Ken Miles",
          "image": "assets/images/actor_3.png",
        },
        {
          "orginalName": "Caitriona Balfe",
          "movieName": "Mollie",
          "image": "assets/images/actor_4.png",
        },
      ],
    ),
  ];

  static String plotText =
      "American car designer Carroll Shelby and driver Kn Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order.";
}
