import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newage_portfolio/utils/constants.dart';



class AppTheme {

  ThemeData darkTheme() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return ThemeData(
      scaffoldBackgroundColor: kBgDarkColor,
      primarySwatch: Colors.grey,
      primaryColor: kPrimaryDarkColor,
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(color: kPrimaryLightColor),
      ),
      brightness: Brightness.dark,
      canvasColor: kBgDarkColor,
      //accentColor: textBlue,
      dividerTheme: DividerThemeData(
        color: Colors.grey,
        thickness: 0.2,
      ),
      appBarTheme: AppBarTheme(
        elevation: 2,
       color: kBgDarkColor
      ),
      accentIconTheme: IconThemeData(color: Colors.white),
    );
  }

  ThemeData lightTheme() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return ThemeData(
      scaffoldBackgroundColor: Colors.grey[300],
      primarySwatch: Colors.grey,
      primaryColor: kPrimaryLightColor,
      inputDecorationTheme: InputDecorationTheme(
        //hintStyle: TextStyle(color: textGrey),
        labelStyle: TextStyle(color: kPrimaryColor),
      ),
      canvasColor: kPrimaryLightColor,
      brightness: Brightness.light,
      //accentColor: introGrey,
      dividerTheme: DividerThemeData(
        color: Colors.grey,
        thickness: 0.2,
      ),
      appBarTheme: AppBarTheme(
        elevation: 2,
        //color: textWhite
      ),
      accentIconTheme: IconThemeData(color: Colors.black),
    );
  }

}
