import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_info_app/domain/model/move_model.dart';
import 'package:movie_info_app/presentation/comman/shadow.dart';
import 'package:movie_info_app/presentation/resource/app_size.dart';
import 'package:movie_info_app/presentation/resource/color_manager.dart';
import 'package:movie_info_app/presentation/resource/image_manager.dart';
import 'package:movie_info_app/presentation/resource/string_manager.dart';

class HeaderDetilsPage extends StatelessWidget {
  final MoiveModel moiveModel;
  final Size size;
  const HeaderDetilsPage({
    Key? key,
    required this.size,
    required this.moiveModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * AppSize.s0_4,
      child: Stack(
        children: [
          Container(
            height: size.height * AppSize.s0_4 - AppSize.s50,
            decoration: BoxDecoration(
                boxShadow: const [kShadow],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(AppSize.s50),
                ),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(moiveModel.poster))),
          ),
          Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                alignment: Alignment.center,
                height: AppSize.s100,
                width: size.width * 0.8,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppSize.s50),
                      topLeft: Radius.circular(AppSize.s50),
                    ),
                    color: ColorManager.white,
                    boxShadow: [kShadow]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          ImageManager.starFillIcon,
                          height: AppSize.s30,
                        ),
                        Text(
                          moiveModel.rating.toString(),
                          style: const TextStyle(
                              fontSize: AppSize.s16,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          moiveModel.numofRatings.toString(),
                          style: const TextStyle(
                              fontSize: 10,
                              color: ColorManager.kTextLightColor),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          ImageManager.starIcon,
                          height: AppSize.s30,
                        ),
                        const Text(StringManager.rateThis),
                        const SizedBox(
                          height: AppSize.s10,
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(AppSize.s5),
                          alignment: Alignment.center,
                          color: ColorManager.kGreenColor,
                          child: Text(
                            moiveModel.metaScoreRating.toString(),
                            style: const TextStyle(
                                fontSize: AppSize.s16,
                                color: ColorManager.white),
                          ),
                        ),
                        const SizedBox(
                          height: AppSize.s5,
                        ),
                        const Text(
                          StringManager.metaScore,
                          style: TextStyle(
                              fontSize: AppSize.s16,
                              fontWeight: FontWeight.w600),
                        ),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(text: moiveModel.criticsReview.toString()),
                            const TextSpan(
                                text: StringManager.criticsReview,
                                style: TextStyle(
                                    color: ColorManager.kTextLightColor)),
                          ]),
                        )
                      ],
                    ),
                  ],
                ),
              )),
          const SafeArea(child: BackButton())
        ],
      ),
    );
  }
}
