import 'package:flutter/material.dart';
import 'package:movie_info_app/domain/model/move_model.dart';
import 'package:movie_info_app/presentation/resource/app_size.dart';
import 'package:movie_info_app/presentation/resource/color_manager.dart';

class TextDurtionEelvateBut extends StatelessWidget {
  const TextDurtionEelvateBut({
    Key? key,
    required this.moiveModel,
  }) : super(key: key);

  final MoiveModel moiveModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.s20),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                moiveModel.title,
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                    style: const TextStyle(color: ColorManager.kTextLightColor),
                    children: [
                      TextSpan(
                        text: moiveModel.year.toString(),
                      ),
                      const TextSpan(
                        text: "   PG-13",
                      ),
                      const TextSpan(
                        text: "   2:45:23 ",
                      ),
                    ]),
              )
            ],
          )),
          SizedBox(
            width: 64,
            height: 64,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSize.s20)),
                  primary: ColorManager.kSecondaryColor),
              onPressed: () => print("add"),
              child: const Icon(
                Icons.add,
                size: 28,
              ),
            ),
          )
        ],
      ),
    );
  }
}
