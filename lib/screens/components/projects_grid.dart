import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newage_portfolio/utils/responsive.dart';
import 'package:newage_portfolio/utils/screen_config.dart';
import 'package:newage_portfolio/utils/themes_mode.dart';


class ProjectGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    ThemesMode().init(context);

    double bigCardSize = (((ScreenConfig.screenWidth-80)/2) * 0.85 >= 500? 500 : ((ScreenConfig.screenWidth-80)/2) * 0.85);
    double smallCardSize = ((ScreenConfig.screenWidth)/2+200) * 0.85 >= 480? 480 : ((ScreenConfig.screenWidth)/2+200) * 0.85;

    return Container(
      height: ScreenConfig.screenHeight-180,
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
      child: Responsive(
        mobile: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            bigCard(
                smallCardSize/2-20,
                smallCardSize
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                smallCard(smallCardSize/2-10, smallCardSize/2-10),
                smallCard(smallCardSize/2-10, smallCardSize/2-10)
              ],
            )
          ],
        ),
        tablet: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            bigCard(bigCardSize, bigCardSize),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                smallCard(bigCardSize/2-10, bigCardSize/2-10),
                smallCard(bigCardSize/2-10, bigCardSize/2-10),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                smallCard(bigCardSize/2-10, bigCardSize/2-10),
                smallCard(bigCardSize/2-10, bigCardSize/2-10),
              ],
            )
          ],
        ),
        desktop: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            bigCard(bigCardSize, bigCardSize),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                smallCard(bigCardSize/2-10, bigCardSize/2-10),
                smallCard(bigCardSize/2-10, bigCardSize/2-10),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                smallCard(bigCardSize/2-10, bigCardSize/2-10),
                smallCard(bigCardSize/2-10, bigCardSize/2-10),
              ],
            )
          ],
        ),
      ),
    );

  }

  Widget bigCard(double height, double width) {

    double titleFontSize = responsiveText(10) > 16 ? 16: responsiveText(10);
    double descriptionFontSize = responsiveText(8) > 14 ? 14: responsiveText(8);

    bool isMobile = height == width/2-20;


    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(!isMobile?20:10),
      decoration: BoxDecoration(
          color: Color(0xFFF4F4F4),
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child:

      !isMobile? Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Align(alignment: Alignment.center, child: Image.asset("images/img_studlab.png")),
              ),
            ),

            Text(
              "StudLab",
              style: TextStyle(color: Colors.black,fontSize: titleFontSize, fontWeight: FontWeight.bold),
            ),

            Text(
              "The StudLab is an educational application that is developed by newagedevs to support the students of BUBT. By using this application.... (Read more)",
              style: TextStyle(color: Colors.black,fontSize: descriptionFontSize,),
            ),
        ],
      ): Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("images/img_studlab.png"),
                  fit: BoxFit.scaleDown
                )
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "StudLab",
                    style: TextStyle(color: Colors.black,fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "The StudLab is an educational application that is developed by newagedevs to support the students of BUBT. By using this application.... (Read more)",
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black,fontSize: 14,),
                  ),
                ],
              ),
            )
          )
        ],
      ),
    );
  }

  Widget smallCard(double height, double width) {


    print(responsiveText(10).toString());
    print(responsiveText(8).toString());

    double titleFontSize = responsiveText(10) > 14 ? 14: responsiveText(10);
    double descriptionFontSize = responsiveText(8) > 13 ? 13: responsiveText(8);

    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
          color: Color(0xfff4f4f4),
          borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 60,
            width: 60,
            child: Image.asset("images/ic_facebook.png"),
          ),
          Text(
            "FB Video Downloader",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black,fontSize: titleFontSize, ),
          ),
          SizedBox(
            height: 30,
            width: width-80,
            child: CupertinoButton(
              onPressed: () {

              },
              padding: EdgeInsets.zero,
              color: Color(0xFFFFFFFF),
              child: Text('Visit', style: TextStyle(fontSize: descriptionFontSize),),
            ),
          ),
        ],
      ),
    );
  }


}


