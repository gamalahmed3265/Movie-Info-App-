import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:movie_info_app/domain/model/move_model.dart';
import 'package:movie_info_app/presentation/comman/card_page_builder_moive.dart';
import 'package:movie_info_app/presentation/view/details_page.dart';

// ignore: must_be_immutable
class CardPageBuilderMoiveAnimation extends StatelessWidget {
  MoiveModel moiveModel;
  CardPageBuilderMoiveAnimation({
    required this.moiveModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      openElevation: 0,
      closedElevation: 0,
      closedBuilder: (context, action) =>
          CardPageBuilderMoive(moiveModel: moiveModel),
      openBuilder: (context, action) => DetilsMoive(moiveModel: moiveModel),
    );
  }
}
