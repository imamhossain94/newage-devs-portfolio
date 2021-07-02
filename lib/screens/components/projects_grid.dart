import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newage_portfolio/utils/screen_config.dart';
import 'package:newage_portfolio/utils/themes_mode.dart';


class ProjectGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    ThemesMode().init(context);
    return fourPhotosCard();
  }

  Widget fourPhotosCard() {

    // double height = ScreenConfig.screenWidth / 2;
    // double width = ScreenConfig.screenWidth;

    double height = ScreenConfig.screenHeight - 180;
    double width = ScreenConfig.screenWidth;

    return Container(
        color:
        ThemesMode.isDarkMode ? Colors.black : Colors.white,
        //padding: EdgeInsets.all(15),
        height: height,
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            coverPhotosWidget('images/img_one.jpg', height - 40, height - 40),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                photosWidget('images/img_one.jpg', ((height - 40) / 2)-5, ((height - 40) / 2)-5 ),
                SizedBox(
                  height: 10,
                ),
                photosWidget('images/img_one.jpg', ((height - 40) / 2)-5, ((height - 40) / 2)-5),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                photosWidget('images/img_one.jpg', ((height - 40) / 2)-5, ((height - 40) / 2)-5 ),
                SizedBox(
                  height: 10,
                ),
                photosWidget('images/img_one.jpg', ((height - 40) / 2)-5, ((height - 40) / 2)-5 ),
              ],
            )
          ],
        ));
  }

  Widget coverPhotosWidget(String photo, double height, double width) {
    return Container(
        height: height,
        width: width,
        padding: EdgeInsets.all(40),
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Color(0xFF444546), width: 0.25),
          shape: BoxShape.rectangle,
            color: Color(0xFFF4F4F4)
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "StudLab",
                style: TextStyle(color: Colors.black,fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "The StudLab is an educational application that is developed by newagedevs to support the students of BUBT. By using this application.... (Read more)",
                style: TextStyle(color: Colors.black,fontSize: 18,),
              ),
              Expanded(child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Image.asset("images/img_studlab.png"),
              ),)
            ],
        ),
    );
  }

  Widget photosWidget(String photo, double height, double width) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.fromLTRB(10, 40, 10, 10),
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Color(0xFF444546), width: 0.25),
          shape: BoxShape.rectangle,
          color: Color(0xFFF4F4F4)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          SizedBox(
            height: 60,
            width: 60,
            child: Image.asset("images/ic_facebook.png"),
          ),
          Spacer(),
          Text(
            "FB Video Downloader",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black,fontSize: 18, ),
          ),
          Spacer(),
          SizedBox(
            height: 40,
            width: width-80,
            child: CupertinoButton(
              onPressed: () {

              },
              padding: EdgeInsets.zero,
              color: Color(0xFFFAFAFA),
              child: Text('Visit'),
            ),
          ),

        ],
      ),
    );
  }
}


