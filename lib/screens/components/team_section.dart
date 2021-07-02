import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newage_portfolio/utils/screen_config.dart';
import 'package:newage_portfolio/utils/themes_mode.dart';


class TeamSection extends StatelessWidget {
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
              child: Text("Our Extraordinary Team", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),),
            ),
          ),
          Expanded(
            child: Container(
              color:ThemesMode.isDarkMode ? Colors.black : Colors.transparent,
              height: ScreenConfig.screenHeight - 120,
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  logoWidget("", ((width-120)/3)-80, ((width-120)/3)-80),
                  logoWidget("", ((width-120)/3)-80, ((width-120)/3)-80),
                  logoWidget("", ((width-120)/3)-80, ((width-120)/3)-80),
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
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          shape: BoxShape.rectangle,
          color: Colors.white
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
            height: height-90,
            width: width-10,
            alignment: Alignment.center,
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                shape: BoxShape.rectangle,
                color: _randomColor,
              image: DecorationImage(
                image: AssetImage("images/user_image.png"),
                fit: BoxFit.fill
              )
            ),
          ),

          Spacer(),
          Text(
            "Md. Imam Hossain",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5,),
          Text(
            "Software Engineer",
            textAlign: TextAlign.center,
            //overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.black,fontSize: 14, ),
          ),
        ],
      ),
    );
  }



}


