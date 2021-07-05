import 'package:flutter/material.dart';

class HomeScrollController extends ChangeNotifier {

  ScrollController scrollController = ScrollController(initialScrollOffset: 0.0);

  void getScrollPosition(double position){
    //scrollController.jumpTo(position);
    scrollController.animateTo(position, duration: Duration(milliseconds: 500), curve: Curves.linear);
  }

}
