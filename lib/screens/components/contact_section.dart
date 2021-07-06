import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newage_portfolio/utils/constants.dart';
import 'package:newage_portfolio/utils/responsive.dart';
import 'package:newage_portfolio/utils/screen_config.dart';
import 'package:newage_portfolio/utils/themes_mode.dart';


class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    ThemesMode().init(context);


    double height = isMobile(context)?ScreenConfig.screenHeight*2 - 200:ScreenConfig.screenHeight - 60;
    double width = ScreenConfig.screenWidth;

    return Container(
      height: height,
      width: width,
      color:ThemesMode.isDarkMode ? Colors.black : Colors.transparent,//Colors.white.withOpacity(0.5),
      child: Column(
        children: [
          SizedBox(
            height: 120,
            width: width,
            child: Center(
              child: Text("Contact", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),),
            ),
          ),
          Expanded(
            child: Container(
              //color:ThemesMode.isDarkMode ? Colors.black : Colors.transparent,
              width: width,
              padding: EdgeInsets.symmetric(horizontal: isMobile(context)?30:80),
              child: Responsive(
                mobile: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(child: contactInfoWidget("", ((width-120)/3)-80, ((width-120)/3)-80)),
                    Expanded(child: contactFormWidget("", ((width-120)/3)-80, ((width-120)/3)-80)),
                  ],
                ),
                tablet: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(child: contactInfoWidget("", ((width-120)/3)-80, ((width-120)/3)-80)),
                    Expanded(child: contactFormWidget("", ((width-120)/3)-80, ((width-120)/3)-80)),
                  ],
                ),
                desktop: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(child: contactInfoWidget("", ((width-120)/3)-80, ((width-120)/3)-80)),
                    Expanded(child: contactFormWidget("", ((width-120)/3)-80, ((width-120)/3)-80)),
                  ],
                ),
              ),
            )
          ),

          Container(
            height: 100,
            width: width,
           // color: Colors.white,
            alignment: Alignment.center,
            child: Text("© 2021 newagedevs.com | Md. Imam Hossain", textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF9EA6B7), fontSize: responsiveText(10) > 14 ? 14: responsiveText(10), fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }


  Widget contactInfoWidget(String string, double height, double width) {

    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          shape: BoxShape.rectangle,
          color: Colors.white
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          contactInfoItem(FontAwesomeIcons.phone, "+8801759140326"),
          //contactInfoItem(FontAwesomeIcons.phone, "+8801637580265"),
          contactInfoItem(FontAwesomeIcons.solidEnvelope, "support@newagedevs.com"),
          contactInfoItem(FontAwesomeIcons.mapMarkedAlt, "Mirpur-2, Dhaka, Bangladesh"),

        ],
      ),
    );
  }

  Widget contactFormWidget(String string, double height, double width) {

    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          shape: BoxShape.rectangle,
          color: Colors.white
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          contactFormItem("Full Name: *", null),
          contactFormItem("Email: *", null),
          contactFormItem("Subject: *", null),

          Expanded(
              child: contactFormItem("Message: *", null),
          ),

          SizedBox(
            height: 40,
            width: width-40,
            child: CupertinoButton(
              onPressed: () {

              },
              padding: EdgeInsets.zero,
              color: Color(0xFFE8E8E8),
              child: Text("Submit"),
            ),
          ),

        ],
      ),
    );
  }

  Widget contactInfoItem(IconData icon, String content) {

    double titleFontSize = responsiveText(10) > 14 ? 14: responsiveText(10);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      child: Row(
        children: [
          SizedBox(
            height: 40,
            width: 40,
            child: CupertinoButton(
              onPressed: () {

              },
              padding: EdgeInsets.zero,
              color: kBgLightColor,
              child: FaIcon(
                icon, size:18,
              ),
            ),
          ),
          SizedBox(width: 20,),
          Expanded(
            child: Container(
                height: 40,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: kBgLightColor,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child: Text(content, style: TextStyle(fontSize: titleFontSize, fontWeight: FontWeight.bold),)
            ),
          ),
        ],
      ),
    );
  }

  Widget contactFormItem(String hint, TextEditingController textEditingController) {

    double titleFontSize = responsiveText(10) > 14 ? 14: responsiveText(10);

    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
        child: SizedBox(
          height: 40,
          child: TextField(
            textAlign: TextAlign.start,
            controller: textEditingController,
            keyboardType: TextInputType.text,
            maxLines: hint == "Message: *"?10:1,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(fontSize: titleFontSize),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              focusedBorder:OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black12, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              filled: true,
              contentPadding: EdgeInsets.all(16),
              fillColor: kBgLightColor,
            ),
          ),
        )
    );
  }

}


