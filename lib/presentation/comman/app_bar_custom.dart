import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_info_app/presentation/resource/app_size.dart';
import 'package:movie_info_app/presentation/resource/image_manager.dart';

AppBar appBarCustom() {
  return AppBar(
    leading: IconButton(
        padding: const EdgeInsets.only(left: AppSize.s20),
        onPressed: () {
          print("menu");
        },
        icon: SvgPicture.asset(ImageManager.menuIcon)),
    actions: [
      IconButton(
          padding: const EdgeInsets.only(right: AppSize.s20),
          onPressed: () {
            print("search");
          },
          icon: SvgPicture.asset(ImageManager.searchIcon)),
    ],
  );
}
