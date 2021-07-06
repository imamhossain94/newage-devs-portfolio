import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:newage_portfolio/models/team_model.dart';
import 'package:newage_portfolio/utils/responsive.dart';
import 'package:newage_portfolio/utils/screen_config.dart';
import 'package:newage_portfolio/utils/themes_mode.dart';


class TeamSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    ThemesMode().init(context);

    double smallCardSize = ((ScreenConfig.screenWidth)/2+100) * 0.85;

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
              child: Responsive(
                mobile: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    teamCard(smallCardSize/2+40, smallCardSize/2+40, teams()[0]),
                    teamCard(smallCardSize/2+40, smallCardSize/2+40, teams()[1]),
                  ],
                ),
                tablet: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    teamCard(smallCardSize/2, smallCardSize/2-10, teams()[0]),
                    teamCard(smallCardSize/2, smallCardSize/2-10, teams()[1]),
                    teamCard(smallCardSize/2, smallCardSize/2-10, teams()[2]),
                  ],
                ),
                desktop: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    teamCard(smallCardSize/2, smallCardSize/2-10, teams()[0]),
                    teamCard(smallCardSize/2, smallCardSize/2-10, teams()[1]),
                    teamCard(smallCardSize/2, smallCardSize/2-10, teams()[2]),
                  ],
                ),
              ),
            )
          )
        ],
      ),
    );
  }


  Widget teamCard(double height, double width, TeamModel teamModel) {

    print(responsiveText(10).toString());
    print(responsiveText(8).toString());

    double titleFontSize = responsiveText(10) > 14 ? 14: responsiveText(10);
    double descriptionFontSize = responsiveText(8) > 12 ? 12: responsiveText(8);

    Color _randomColor = Colors.primaries[Random().nextInt(Colors.primaries.length)].withOpacity(0.7);

    bool isTab = ScreenConfig.screenWidth < 1050;

    return Container(
      height: height+30,
      width: width,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                shape: BoxShape.rectangle,
                color: Color(0xfff2f2f2),
                image: DecorationImage(
                  image: NetworkImage(teamModel.imageUrl),
                  fit: BoxFit.fitWidth
                )
              ),
            ),
          ),
          Text(
            teamModel.name,
            textAlign: TextAlign.center,
            style: TextStyle(height: 2, color: Colors.black, fontSize: titleFontSize, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5,),
          Text(
            teamModel.designition,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 5,
            style: TextStyle(height: 1, color: Colors.black, fontSize: descriptionFontSize, ),
          ),
        ],
      ),
    );
  }



}


