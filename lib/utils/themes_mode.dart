import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newage_portfolio/utils/constants.dart';

class ThemesMode {
  static bool isDarkMode;

  void init(BuildContext context) {
    isDarkMode = Theme.of(context).brightness == Brightness.dark;

    SystemChrome.setSystemUIOverlayStyle(ThemesMode.isDarkMode
        ? SystemUiOverlayStyle(
            systemNavigationBarColor: kBgDarkColor,
            systemNavigationBarIconBrightness: Brightness.light,
            statusBarColor: kBgDarkColor,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light,
          )
        : SystemUiOverlayStyle(
            systemNavigationBarColor: kBgLightColor,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarColor: kPrimaryColor,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark,
          ));
  }
}

