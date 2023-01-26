import 'package:flutter/material.dart';
import 'package:movie_info_app/presentation/comman/app_bar_custom.dart';
import 'package:movie_info_app/presentation/comman/categroy_list.dart';
import 'package:movie_info_app/presentation/comman/genres_custom.dart';
import 'package:movie_info_app/presentation/comman/moive_carousel.dart';
import 'package:movie_info_app/presentation/resource/app_size.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSize.s20),
        child: ListView(
          children: const [
            CategroyList(),
            SizedBox(
              height: AppSize.s10,
            ),
            GenresList(),
            SizedBox(
              height: AppSize.s40,
            ),
            MoiveCarousel(),
            SizedBox(
              height: AppSize.s40,
            ),
          ],
        ),
      ),
    );
  }
}
