import 'package:flutter/material.dart';
import 'package:movie_info_app/domain/model/move_model.dart';
import 'package:movie_info_app/presentation/comman/genres_list_build.dart';
import 'package:movie_info_app/presentation/resource/app_size.dart';

class GenresDetails extends StatelessWidget {
  const GenresDetails({
    Key? key,
    required this.moiveModel,
  }) : super(key: key);

  final MoiveModel moiveModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s20),
      child: SizedBox(
        height: AppSize.s60,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: moiveModel.genra.length,
            itemBuilder: (context, index) => GenresListBuild(
                text: moiveModel.genra[index], isSelect: false)),
      ),
    );
  }
}
