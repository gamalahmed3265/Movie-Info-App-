import 'package:flutter/material.dart';
import 'package:movie_info_app/presentation/comman/genres_list_build.dart';
import 'package:movie_info_app/presentation/resource/app_size.dart';
import 'package:movie_info_app/presentation/resource/string_manager.dart';

class GenresList extends StatefulWidget {
  const GenresList({Key? key}) : super(key: key);

  @override
  State<GenresList> createState() => _GenresListState();
}

class _GenresListState extends State<GenresList> {
  final genreslistData = StringManager.genresListData;
  int select = 0;
  bool isSelect = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genreslistData.length,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    select = index;
                  });
                },
                child: GenresListBuild(
                    text: genreslistData[index], isSelect: select == index),
              )),
    );
  }
}
