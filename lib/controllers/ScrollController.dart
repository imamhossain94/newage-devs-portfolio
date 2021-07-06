import 'package:flutter/material.dart';
import 'package:newage_portfolio/utils/screen_config.dart';

class HomeScrollController extends ChangeNotifier {

  ScrollController scrollController = ScrollController(initialScrollOffset: ScreenConfig.screenHeight*3 - 120);

  void getScrollPosition(double position){
    //scrollController.jumpTo(position);
    scrollController.animateTo(position, duration: Duration(milliseconds: 500), curve: Curves.linear);
  }

}
