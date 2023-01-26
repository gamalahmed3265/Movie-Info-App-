import 'package:flutter/material.dart';
import 'package:movie_info_app/presentation/comman/category_text_build.dart';
import 'package:movie_info_app/presentation/resource/app_size.dart';
import 'package:movie_info_app/presentation/resource/string_manager.dart';

class CategroyList extends StatefulWidget {
  const CategroyList({
    Key? key,
  }) : super(key: key);

  @override
  State<CategroyList> createState() => _CategroyListState();
}

class _CategroyListState extends State<CategroyList> {
  final List<String> _list = StringManager.categroyListData;
  int selectItem = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _list.length,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectItem = index;
                });
              },
              child: CategoryTextBuild(
                  text: _list[index], isSelect: selectItem == index))),
    );
  }
}

// ignore: must_be_immutable
