import 'package:flutter/cupertino.dart';
import 'package:movie_info_app/domain/model/move_model.dart';

class AnimationCardPageViewModel {
  final int index;
  final int initialPage;
  final PageController pageController;
  final MoiveModel movies;
  AnimationCardPageViewModel({
    required this.movies,
    required this.index,
    required this.initialPage,
    required this.pageController,
  });
}
