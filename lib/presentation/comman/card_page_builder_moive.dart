import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_info_app/domain/model/move_model.dart';
import 'package:movie_info_app/presentation/resource/app_size.dart';
import 'package:movie_info_app/presentation/resource/image_manager.dart';

class CardPageBuilderMoive extends StatelessWidget {
  const CardPageBuilderMoive({
    Key? key,
    required this.moiveModel,
  }) : super(key: key);

  final MoiveModel moiveModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s15),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(moiveModel.poster))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            moiveModel.title,
            style: Theme.of(context).textTheme.headline5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                ImageManager.starFillIcon,
                height: AppSize.s20,
              ),
              const SizedBox(
                width: AppSize.s10,
              ),
              Text(
                moiveModel.rating.toString(),
                style: Theme.of(context).textTheme.bodyText2,
              )
            ],
          )
        ],
      ),
    );
  }
}
