import 'package:flutter/material.dart';
import 'package:movie_info_app/domain/model/move_model.dart';
import 'package:movie_info_app/presentation/resource/app_size.dart';
import 'package:movie_info_app/presentation/resource/color_manager.dart';

class CastListBuilder extends StatelessWidget {
  const CastListBuilder(
      {Key? key, required this.moiveModel, required this.index})
      : super(key: key);

  final MoiveModel moiveModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                  moiveModel.cast[index]["image"],
                ))),
          ),
          Text(
            moiveModel.cast[index]["orginalName"],
            textAlign: TextAlign.center,
            maxLines: AppSize.s2,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          Text(
            moiveModel.cast[index]["movieName"],
            textAlign: TextAlign.center,
            maxLines: AppSize.s1,
            style: const TextStyle(color: ColorManager.kTextLightColor),
          )
        ],
      ),
    );
  }
}
