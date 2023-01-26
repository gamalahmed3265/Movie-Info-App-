// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:movie_info_app/app/function.dart';
import 'package:movie_info_app/domain/animation_card_page_view_mode.dart';
import 'package:movie_info_app/presentation/comman/card_page_builder_moive_amimation.dart';
import 'package:movie_info_app/presentation/resource/app_size.dart';

import 'card_page_builder_moive.dart';
import 'dart:math' as math;

class AnimationCardPageView extends StatelessWidget {
  final AnimationCardPageViewModel animationCardPageViewModel;
  AnimationCardPageView({
    Key? key,
    required this.animationCardPageViewModel,
  }) : super(key: key);

  double value = 0;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationCardPageViewModel.pageController,
      builder: ((context, child) {
        return AnimatedOpacity(
          duration: const Duration(milliseconds: AppSize.s300),
          opacity: animationCardPageViewModel.initialPage ==
                  animationCardPageViewModel.index
              ? AppSize.s1_0
              : AppSize.s0_4,
          child: Transform.rotate(
            angle: math.pi *
                getvalueAnimation(animationCardPageViewModel.pageController,
                    value, animationCardPageViewModel.index),
            child: CardPageBuilderMoiveAnimation(
                moiveModel: animationCardPageViewModel.movies),
          ),
        );
      }),
    );
  }
}
