import 'package:flutter/cupertino.dart';
import 'package:movie_info_app/domain/animation_card_page_view_mode.dart';

getvalueAnimation(PageController pageController, double value, index) {
  if (pageController.position.haveDimensions) {
    value = index - pageController.page;

    value = (value * 0.038).clamp(-1, 1);
  }
  return value;
}
