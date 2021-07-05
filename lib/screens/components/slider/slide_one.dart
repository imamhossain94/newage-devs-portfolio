import 'package:flutter/material.dart';
import 'package:newage_portfolio/utils/responsive.dart';
import 'package:newage_portfolio/utils/screen_config.dart';

class SlideOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);

    double titleFontSize = !Responsive.isDesktop(context)? responsiveText(24):responsiveText(18);
    double subTitleFontSize = !Responsive.isDesktop(context)? responsiveText(12):responsiveText(8);

    return Container(
      decoration: BoxDecoration(

          image: DecorationImage(
              image: AssetImage("images/ing_bg.png"),
              fit: BoxFit.fill
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: titleFontSize),
              children: [
                TextSpan(
                  text: 'Welcome\n',
                ),
                TextSpan(
                  text: 'to\n',
                ),
                TextSpan(
                  text: 'New',
                ),
                TextSpan(
                  text: 'Age',
                  style: TextStyle(color: Colors.deepOrangeAccent,),
                ),
                TextSpan(
                  text: ' Devs',
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Text(
            "Develop The Idea",
            style: TextStyle(color: Colors.white,  fontSize: subTitleFontSize),
          )

        ],
      ),
    );
  }
}
