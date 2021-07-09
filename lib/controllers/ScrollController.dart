import 'package:flutter/material.dart';
import 'package:newage_portfolio/components/nav_button.dart';
import 'package:newage_portfolio/components/theme_button.dart';
import 'package:newage_portfolio/utils/screen_config.dart';

class HomeScrollController extends ChangeNotifier {
  
  int selectedIndex = 0;

  //Home
  ScrollController scrollController = ScrollController(initialScrollOffset: 0);

  //Projects
  //ScrollController scrollController = ScrollController(initialScrollOffset: ScreenConfig.screenHeight - 60);

  //About
  //ScrollController scrollController = ScrollController(initialScrollOffset: ScreenConfig.screenHeight*3 -120);

  //ScrollController scrollController = ScrollController(initialScrollOffset: ScreenConfig.screenHeight*4 - 60);

  //contact
  //ScrollController scrollController = ScrollController(initialScrollOffset: ScreenConfig.screenHeight*5-110);

  void getScrollPosition(double position) {
    //scrollController.jumpTo(position);
    scrollController.animateTo(position, duration: Duration(milliseconds: 500), curve: Curves.linear);

  }

  void getSelectedIndex(int index) {
    selectedIndex = index;
  }

}
