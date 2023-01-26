import 'package:flutter/material.dart';
import 'package:movie_info_app/presentation/resource/app_size.dart';
import 'package:movie_info_app/presentation/resource/color_manager.dart';

// ignore: must_be_immutable
class GenresListBuild extends StatelessWidget {
  String text;
  bool isSelect;
  GenresListBuild({
    required this.text,
    required this.isSelect,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s20),
      margin: const EdgeInsets.only(right: AppSize.s5),
      decoration: BoxDecoration(
        color: isSelect ? ColorManager.kTextLightColor : ColorManager.white,
        borderRadius: BorderRadius.circular(AppSize.s20),
        border: Border.all(color: Colors.black12),
      ),
      child: Text(text,
          style: Theme.of(context).textTheme.headline6!.copyWith(
              fontSize: AppSize.s15,
              color: isSelect ? ColorManager.white : ColorManager.kTextColor)),
    );
  }
}
