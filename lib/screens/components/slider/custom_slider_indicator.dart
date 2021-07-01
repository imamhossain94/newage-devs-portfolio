import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newage_portfolio/utils/constants.dart';
import 'package:newage_portfolio/utils/screen_config.dart';
import 'package:newage_portfolio/utils/themes_mode.dart';

class CustomSliderIndicator extends StatelessWidget {
  CustomSliderIndicator({
    Key key,
    @required this.length,
    @required this.selectedIndex,
  }) : super(key: key);
  final int length, selectedIndex;

  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    ThemesMode().init(context);


    return Container(
      height: 60,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        child: Row(
          children: [
            SizedBox(
              height: 30,
              width: 30,
              child: CupertinoButton(
                onPressed: () {

                },
                padding: EdgeInsets.zero,
                color: kBgLightColor,
                child: FaIcon(
                  FontAwesomeIcons.angleLeft, size:18,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 8, right:3,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  length,(index) => buildDot(index: index),
                ),
              ),
            ),

            Spacer(),
            SizedBox(
              height: 30,
              width: 30,
              child: CupertinoButton(
                onPressed: () {

                },
                padding: EdgeInsets.zero,
                color: kBgLightColor,
                child: FaIcon(
                  FontAwesomeIcons.angleRight, size:18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 10),
      height: 10,
      width: selectedIndex == index ? 100 : 30,
      decoration: BoxDecoration(
        color: ThemesMode.isDarkMode?selectedIndex == index ? Colors.white : Colors.grey: selectedIndex == index ? Colors.black : Colors.black45,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

