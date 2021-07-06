import 'package:flutter/material.dart';
import 'package:newage_portfolio/utils/screen_config.dart';

class HomeScrollController extends ChangeNotifier {

  ScrollController scrollController = ScrollController(initialScrollOffset: 0);
  //ScrollController scrollController = ScrollController(initialScrollOffset: ScreenConfig.screenHeight*5 - 30);

  void getScrollPosition(double position){
    //scrollController.jumpTo(position);
    scrollController.animateTo(position, duration: Duration(milliseconds: 500), curve: Curves.linear);
  }

}
