import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newage_portfolio/models/info_model.dart';
import 'package:newage_portfolio/utils/responsive.dart';
import 'package:newage_portfolio/utils/screen_config.dart';
import 'package:newage_portfolio/utils/themes_mode.dart';


class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    ThemesMode().init(context);

    double smallCardSize = ((ScreenConfig.screenWidth)/2+100) * 0.85;

    double height = ScreenConfig.screenHeight - 60;
    double width = ScreenConfig.screenWidth;

    return Container(
      height: height+150,
      width: width,

      child: Column(
        children: [
          SizedBox(
            height: 100,
            width: width,
            child: Center(
              child: Text("Who we are", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),),
            ),
          ),
          Expanded(
              child: Container(
                  color:ThemesMode.isDarkMode ? Colors.black : Colors.transparent,
                  height: ScreenConfig.screenHeight - 120,
                  width: width,
                  child: Responsive(
                    mobile: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        infoCard(210, ScreenConfig.screenWidth-80, info()[0]),
                        infoCard(210, ScreenConfig.screenWidth-80, info()[1]),
                        infoCard(210, ScreenConfig.screenWidth-80, info()[2]),
                      ],
                    ),
                    tablet: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        infoCard(smallCardSize/2, smallCardSize/2-10, info()[0]),
                        infoCard(smallCardSize/2, smallCardSize/2-10, info()[1]),
                        infoCard(smallCardSize/2, smallCardSize/2-10, info()[2]),
                      ],
                    ),
                    desktop: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        infoCard(smallCardSize/2, smallCardSize/2-10, info()[0]),
                        infoCard(smallCardSize/2, smallCardSize/2-10, info()[1]),
                        infoCard(smallCardSize/2, smallCardSize/2-10, info()[2]),
                      ],
                    ),
                  ),
              )
          )
        ],
      ),

    );


  }


  Widget infoCard(double height, double width, InfoModel infoModel) {

    print(responsiveText(10).toString());
    print(responsiveText(8).toString());

    double titleFontSize = responsiveText(10) > 14 ? 14: responsiveText(10);
    double descriptionFontSize = responsiveText(8) > 12 ? 12: responsiveText(8);

    Color _randomColor = Colors.primaries[Random().nextInt(Colors.primaries.length)].withOpacity(0.7);

    bool isTab = ScreenConfig.screenWidth < 1050;

    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: isTab?60:80,
            width: isTab?60:80,
            padding: EdgeInsets.all(5),
            alignment: Alignment.center,
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              shape: BoxShape.rectangle,
              color: Color(0xfff2f2f2),
            ),
            child: Image.network(infoModel.imageUrl),
          ),
          Spacer(),
          Text(
            infoModel.title,
            textAlign: TextAlign.start,
            style: TextStyle(height: 2, color: Colors.black, fontSize: titleFontSize, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5,),
          Text(
            infoModel.description,
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            maxLines: 5,
            style: TextStyle(height: 1, color: Colors.black, fontSize: descriptionFontSize, ),
          ),
        ],
      ),
    );
  }



}


