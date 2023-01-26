import 'package:flutter/material.dart';
import 'package:movie_info_app/domain/model/move_model.dart';
import 'package:movie_info_app/presentation/comman/Cast_builder.dart';
import 'package:movie_info_app/presentation/comman/genres_details.dart';
import 'package:movie_info_app/presentation/comman/header_detils_page.dart';
import 'package:movie_info_app/presentation/comman/plot_summary.dart';
import 'package:movie_info_app/presentation/comman/text_durtion_elvate.dart';
import 'package:movie_info_app/presentation/resource/app_size.dart';

class DetilsMoive extends StatelessWidget {
  final MoiveModel moiveModel;

  const DetilsMoive({required this.moiveModel, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(
        children: [
          HeaderDetilsPage(size: size, moiveModel: moiveModel),
          const SizedBox(
            height: AppSize.s10,
          ),
          TextDurtionEelvateBut(moiveModel: moiveModel),
          const SizedBox(
            height: AppSize.s10,
          ),
          GenresDetails(moiveModel: moiveModel),
          const SizedBox(
            height: AppSize.s20,
          ),
          PlotSummary(moiveModel: moiveModel),
          const SizedBox(
            height: AppSize.s20,
          ),
          CastBuilder(moiveModel: moiveModel),
        ],
      ),
    );
  }
}
