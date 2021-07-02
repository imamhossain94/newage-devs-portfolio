import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newage_portfolio/utils/constants.dart';
import 'package:newage_portfolio/utils/screen_config.dart';
import 'package:newage_portfolio/utils/themes_mode.dart';


class ContactSection extends StatelessWidget {
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
              child: Text("Contact", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),),
            ),
          ),
          Expanded(
            child: Container(
              color:ThemesMode.isDarkMode ? Colors.black : Colors.transparent,
              height: ScreenConfig.screenHeight - 180,
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  contactInfoWidget("", ((width-120)/3)-80, ((width-120)/3)-80),
                  contactFormWidget("", ((width-120)/3)-80, ((width-120)/3)-80),
                ],
              )

            )
          ),

          SizedBox(
            height: 60,
            width: width,
            child: Center(
              child: Text("© 2021 Imam Hossain.", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),),
            ),
          ),
        ],
      ),

    );


  }


  Widget contactInfoWidget(String string, double height, double width) {

    Color _randomColor = Colors.primaries[Random().nextInt(Colors.primaries.length)].withOpacity(0.3);

    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          shape: BoxShape.rectangle,
          color: Colors.white
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Padding(
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
                      FontAwesomeIcons.phone, size:18,
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Text("+8801759140326", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
              ],
            ),
          ),

          Padding(
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
                      FontAwesomeIcons.phone, size:18,
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Text("+8801759140326", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
              ],
            ),
          ),

          Padding(
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
                      FontAwesomeIcons.solidEnvelope, size:18,
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Text("support@newagedevs.com", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
              ],
            ),
          ),

          Padding(
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
                      FontAwesomeIcons.mapMarkedAlt, size:18,
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Text("mirpur-2, Dhaka, Bangladesh", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
              ],
            ),
          )

        ],
      ),
    );
  }


  Widget contactFormWidget(String string, double height, double width) {

    Color _randomColor = Colors.primaries[Random().nextInt(Colors.primaries.length)].withOpacity(0.3);

    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          shape: BoxShape.rectangle,
          color: Colors.white
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
            child: SizedBox(
              height: 40,
              child: TextField(
                textAlign: TextAlign.start,
                controller: null,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Full Name:*',
                  hintStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      width: 1,
                      style: BorderStyle.none,
                    ),
                  ),
                  focusedBorder:OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54, width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  contentPadding: EdgeInsets.all(16),
                  fillColor: kBgLightColor,
                ),
              ),
            )
          ),

          Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              child: SizedBox(
                height: 40,
                child: TextField(
                  textAlign: TextAlign.start,
                  controller: null,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Email:*',
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        width: 1,
                        style: BorderStyle.none,
                      ),
                    ),
                    focusedBorder:OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54, width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    contentPadding: EdgeInsets.all(16),
                    fillColor: kBgLightColor,
                  ),
                ),
              )
          ),

          Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              child: SizedBox(
                height: 40,
                child: TextField(
                  textAlign: TextAlign.start,
                  controller: null,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Subject:*',
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        width: 1,
                        style: BorderStyle.none,
                      ),
                    ),
                    focusedBorder:OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54, width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    contentPadding: EdgeInsets.all(16),
                    fillColor: kBgLightColor,
                  ),
                ),
              )
          ),

          Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              child: Expanded(
                child: TextField(
                  textAlign: TextAlign.start,
                  controller: null,
                  keyboardType: TextInputType.text,
                  maxLines: 4,
                  decoration: InputDecoration(
                    hintText: 'Message:*',
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        width: 1,
                        style: BorderStyle.none,
                      ),
                    ),
                    focusedBorder:OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54, width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    contentPadding: EdgeInsets.all(16),
                    fillColor: kBgLightColor,
                  ),
                ),
              )
          ),


          SizedBox(
            height: 40,
            width: width-40,
            child: CupertinoButton(
              onPressed: () {

              },
              padding: EdgeInsets.zero,
              color: Colors.blue,
              child: Text("Submit"),
            ),
          ),

        ],
      ),
    );
  }



}


