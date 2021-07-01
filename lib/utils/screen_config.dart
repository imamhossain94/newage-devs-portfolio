import 'package:flutter/widgets.dart';

class ScreenConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;
  static double _safeAreaHorizontal;
  static double _safeAreaVertical;
  static double safeBlockHorizontal;
  static double safeBlockVertical;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth/100;
    blockSizeVertical = screenHeight/100;
    _safeAreaHorizontal = _mediaQueryData.padding.left +
        _mediaQueryData.padding.right;
    _safeAreaVertical = _mediaQueryData.padding.top +
        _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal)/100;
    safeBlockVertical = (screenHeight - _safeAreaVertical)/100;

    orientation = _mediaQueryData.orientation;
    defaultSize = orientation == Orientation.landscape
        ? screenHeight * 0.024
        : screenWidth * 0.024;
  }



}

//Sam_sung galaxy 1080 x 2340
double responsiveHeight(double height) {
  double screenHeight = ScreenConfig.screenHeight;
  return (height / 812.0) * screenHeight;
}

double responsiveWidth(double width) {
  double screenWidth = ScreenConfig.screenWidth;
  return (width / 375.0) * screenWidth;
}

double responsiveText(double width) {
  // double screenHeight = ScreenConfig.screenHeight;
  // return (height / 812.0) * screenHeight;
  double screenWidth = ScreenConfig.screenWidth;
  return (width / 375.0) * screenWidth;
}

bool isPortrait() {
  return Orientation.portrait == ScreenConfig.orientation ? true : false;
}