import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newage_portfolio/utils/screen_config.dart';
import 'package:newage_portfolio/utils/themes_mode.dart';


class TechnologiesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    ThemesMode().init(context);


    double height = ScreenConfig.screenHeight - 80;
    double width = ScreenConfig.screenWidth;

    return Container(
      height: height,
      width: width,

      child: Column(
        children: [
          SizedBox(
            height: 120,
            width: width,
            child: Center(
              child: Text("Technologies we use", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),),
            ),
          ),
          Expanded(
            child: Container(
              color:ThemesMode.isDarkMode ? Colors.black : Colors.white,
              height: ScreenConfig.screenHeight - 120,
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      logoWidget("", ((width-120)/4)-120, ((width-120)/4)-120),
                      logoWidget("", ((width-120)/4)-120, ((width-120)/4)-120),
                      logoWidget("", ((width-120)/4)-120, ((width-120)/4)-120),
                      logoWidget("", ((width-120)/4)-120, ((width-120)/4)-120),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      logoWidget("", ((width-120)/4)-120, ((width-120)/4)-120),
                      logoWidget("", ((width-120)/4)-120, ((width-120)/4)-120),
                      logoWidget("", ((width-120)/4)-120, ((width-120)/4)-120),
                      logoWidget("", ((width-120)/4)-120, ((width-120)/4)-120),
                    ],
                  )
                ],
              )

            )
          )
        ],
      ),

    );


  }


  Widget logoWidget(String string, double height, double width) {

    Color _randomColor = Colors.primaries[Random().nextInt(Colors.primaries.length)].withOpacity(0.3);

    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(10),
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          shape: BoxShape.rectangle,
          color: Colors.transparent
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
            height: 100,
            width: 100,
            padding: EdgeInsets.all(25),
            alignment: Alignment.center,
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                shape: BoxShape.rectangle,
                color: _randomColor,
            ),
            child: Icon(FontAwesomeIcons.react, size: 36,),
          ),

          SizedBox(height: 5,),
          Text(
            "React JS",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 2,),
          Text(
            "A cross-platform framework made by facebook.",
            textAlign: TextAlign.center,
            //overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.black,fontSize: 14, ),
          ),
        ],
      ),
    );
  }



}


