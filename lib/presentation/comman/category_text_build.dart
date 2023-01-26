import 'package:flutter/material.dart';
import 'package:movie_info_app/presentation/resource/app_size.dart';
import 'package:movie_info_app/presentation/resource/color_manager.dart';

// ignore: must_be_immutable
class CategoryTextBuild extends StatelessWidget {
  String text;
  bool isSelect;

  CategoryTextBuild({required this.text, required this.isSelect, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: AppSize.s20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.w600,
                color: isSelect
                    ? ColorManager.kTextColor
                    : ColorManager.kTextColor.withOpacity(AppSize.s0_4)),
          ),
          Container(
            height: AppSize.s6,
            width: AppSize.s40,
            margin: const EdgeInsets.symmetric(vertical: AppSize.s10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSize.s10),
                color: isSelect
                    ? ColorManager.kSecondaryColor
                    : Colors.transparent),
          )
        ],
      ),
    );
  }
}
