import 'package:flutter/material.dart';
import 'package:movie_info_app/domain/model/move_model.dart';
import 'package:movie_info_app/presentation/comman/cast_list_builder.dart';
import 'package:movie_info_app/presentation/resource/app_size.dart';
import 'package:movie_info_app/presentation/resource/string_manager.dart';

class CastBuilder extends StatelessWidget {
  const CastBuilder({
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
            StringManager.castCrew,
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(
            height: AppSize.s10,
          ),
          SizedBox(
            height: AppSize.s160,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: moiveModel.cast.length,
                separatorBuilder: (context, index) => const SizedBox(
                      width: AppSize.s10,
                    ),
                itemBuilder: (context, index) => CastListBuilder(
                      moiveModel: moiveModel,
                      index: index,
                    )),
          )
        ],
      ),
    );
  }
}
