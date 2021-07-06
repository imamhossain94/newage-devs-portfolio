import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newage_portfolio/models/technology_model.dart';
import 'package:newage_portfolio/utils/constants.dart';
import 'package:newage_portfolio/utils/responsive.dart';
import 'package:newage_portfolio/utils/screen_config.dart';
import 'package:newage_portfolio/utils/themes_mode.dart';


class TechnologiesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    ThemesMode().init(context);

    double smallCardSize = ((ScreenConfig.screenWidth)/2+200) * 0.85 >= 480? 480 : ((ScreenConfig.screenWidth)/2+200) * 0.85;

    double height = ScreenConfig.screenHeight - 60;
    double width = ScreenConfig.screenWidth;


    return Container(
      height: height,
      width: width,
      child: Column(
        children: [
          SizedBox(
            height: 100,
            width: width,
            child: Center(
              child: Text("Technologies we use", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),),
            ),
          ),
          Expanded(
            child: Container(
              //color:ThemesMode.isDarkMode ? Colors.black : Colors.grey[300],
              height: ScreenConfig.screenHeight - 120,
              width: width,
              child: Responsive(
                mobile: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        technologyCard(smallCardSize/2-10, smallCardSize/2-10, technologies()[0]),
                        technologyCard(smallCardSize/2-10, smallCardSize/2-10, technologies()[0]),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        technologyCard(smallCardSize/2-10, smallCardSize/2-10, technologies()[0]),
                        technologyCard(smallCardSize/2-10, smallCardSize/2-10, technologies()[0]),
                      ],
                    )
                  ],
                ),
                tablet: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        technologyCard(smallCardSize/2-10, smallCardSize/2-10, technologies()[0]),
                        technologyCard(smallCardSize/2-10, smallCardSize/2-10, technologies()[0]),
                        technologyCard(smallCardSize/2-10, smallCardSize/2-10, technologies()[0]),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        technologyCard(smallCardSize/2-10, smallCardSize/2-10, technologies()[0]),
                        technologyCard(smallCardSize/2-10, smallCardSize/2-10, technologies()[0]),
                        technologyCard(smallCardSize/2-10, smallCardSize/2-10, technologies()[0]),
                      ],
                    )
                  ],
                ),
                desktop: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        technologyCard(smallCardSize/2-10, smallCardSize/2-10, technologies()[0]),
                        technologyCard(smallCardSize/2-10, smallCardSize/2-10, technologies()[0]),
                        technologyCard(smallCardSize/2-10, smallCardSize/2-10, technologies()[0]),
                        technologyCard(smallCardSize/2-10, smallCardSize/2-10, technologies()[0]),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        technologyCard(smallCardSize/2-10, smallCardSize/2-10, technologies()[0]),
                        technologyCard(smallCardSize/2-10, smallCardSize/2-10, technologies()[0]),
                        technologyCard(smallCardSize/2-10, smallCardSize/2-10, technologies()[0]),
                        technologyCard(smallCardSize/2-10, smallCardSize/2-10, technologies()[0]),
                      ],
                    )
                  ],
                ),
              ),
            )
          )
        ],
      ),
    );
  }


  Widget technologyCard(double height, double width, TechnologyModel technologyModel) {

    double titleFontSize = responsiveText(10) > 14 ? 16: responsiveText(10);
    double descriptionFontSize = responsiveText(8) > 12 ? 14: responsiveText(8);
    Color _randomColor = Colors.primaries[Random().nextInt(Colors.primaries.length)].withOpacity(0.7);

    bool isTab = ScreenConfig.screenWidth < 1050;

    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: ThemesMode.isDarkMode?Colors.black87:kBgLightColor,
          borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: isTab?60:80,
            width: isTab?60:80,
            padding: EdgeInsets.all(15),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(isTab?15:30)),
              shape: BoxShape.rectangle,
              color: _randomColor,
            ),
            child: Image.network(technologyModel.imageUrl),
          ),
          Text(
            technologyModel.title,
            textAlign: TextAlign.center,
            style: TextStyle(height: 2, color: ThemesMode.isDarkMode?Colors.white54 :Colors.black, fontWeight: FontWeight.bold, fontSize: titleFontSize, ),
          ),
          //SizedBox(height: 10,),
          Text(technologyModel.description,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: isTab?2:3,
            style: TextStyle(height: 2, color: ThemesMode.isDarkMode?Colors.white54 :Colors.black,fontSize: descriptionFontSize,),
          ),
        ],
      ),
    );
  }

}


