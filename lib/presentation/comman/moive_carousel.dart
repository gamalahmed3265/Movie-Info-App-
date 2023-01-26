import 'package:flutter/material.dart';
import 'package:movie_info_app/data/data_source.dart/local_data.dart';
import 'package:movie_info_app/domain/animation_card_page_view_mode.dart';
import 'package:movie_info_app/domain/model/move_model.dart';
import 'package:movie_info_app/presentation/comman/animation_card_page_view.dart';
import 'package:movie_info_app/presentation/resource/app_size.dart';
import 'package:movie_info_app/presentation/view/details_page.dart';

class MoiveCarousel extends StatefulWidget {
  const MoiveCarousel({Key? key}) : super(key: key);

  @override
  State<MoiveCarousel> createState() => _MoiveCarouselState();
}

class _MoiveCarouselState extends State<MoiveCarousel> {
  int initialPage = 0;
  late PageController pageController;
  List<MoiveModel> movies = LocalDataResource.movies;
  @override
  void initState() {
    pageController = PageController(
        viewportFraction: AppSize.s0_85, initialPage: initialPage);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: AppSize.s0_85,
      child: PageView.builder(
          controller: pageController,
          itemCount: movies.length,
          onPageChanged: (value) {
            setState(() {
              initialPage = value;
            });
          },
          physics: const ClampingScrollPhysics(),
          itemBuilder: (context, index) => AnimationCardPageView(
              animationCardPageViewModel: AnimationCardPageViewModel(
                  movies: movies[index],
                  index: index,
                  initialPage: initialPage,
                  pageController: pageController))),
    );
  }
}
