import 'package:flutter/material.dart';
import 'package:movie_info_app/domain/model/move_model.dart';
import 'package:movie_info_app/presentation/resource/app_size.dart';
import 'package:movie_info_app/presentation/resource/color_manager.dart';
import 'package:movie_info_app/presentation/resource/string_manager.dart';

class PlotSummary extends StatelessWidget {
  const PlotSummary({
    Key? key,
    required this.moiveModel,
  }) : super(key: key);

  final MoiveModel moiveModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringManager.plotSummary,
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(
            height: AppSize.s10,
          ),
          Text(moiveModel.plot,
              style: const TextStyle(color: ColorManager.ksSummaryColor)),
        ],
      ),
    );
  }
}
