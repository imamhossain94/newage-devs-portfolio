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

    double height = ScreenConfig.screenWidth / 2;
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
            coverPhotosWidget('images/img_one.jpg', height - 30,
                (width / 2) - (width / 5)),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                photosWidget('images/img_one.jpg',
                    (height - 30) / 2 - 5, (width / 3.48)),
                SizedBox(
                  height: 10,
                ),
                photosWidget('images/img_one.jpg',
                    (height - 30) / 2 - 5, (width / 3.48)),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                photosWidget('images/img_one.jpg',
                    (height - 30) / 2 - 5, (width / 3.48)),
                SizedBox(
                  height: 10,
                ),
                photosWidget('images/img_one.jpg',
                    (height - 30) / 2 - 5, (width / 3.48)),
              ],
            )
          ],
        ));
  }

  Widget coverPhotosWidget(String photo, double height, double width) {
    return Container(
        height: height,
        width: width,
        decoration: new BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          shape: BoxShape.rectangle,
          image: new DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(photo)),
        ));
  }

  Widget photosWidget(String photo, double height, double width) {
    return Container(
        height: height,
        width: width,
        decoration: new BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          shape: BoxShape.rectangle,
          image: new DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(photo)),
        ));
  }
}


