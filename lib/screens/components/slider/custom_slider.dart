import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newage_portfolio/screens/components/slider/slide_one.dart';
import 'package:newage_portfolio/utils/constants.dart';
import 'package:newage_portfolio/utils/screen_config.dart';
import 'package:newage_portfolio/utils/themes_mode.dart';


class CustomSlider extends StatefulWidget {

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {


  int selectedIndex = 0;
  PageController pageController = PageController(viewportFraction: 1, keepPage: true);
  List<Widget> widgets = [];

  @override
  void initState() {
    widgets.add(SlideOne());
    widgets.add(slideTwo());
    widgets.add(slideThree());
    widgets.add(slideFour());
    //WidgetsBinding.instance.addPostFrameCallback((_) => autoSlide());
    //autoSlide();
    super.initState();
  }



  Widget slideOne() {

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
              children: [
                TextSpan(
                  text: 'Welcome\n',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 60),
                ),
                TextSpan(
                    text: 'to\n',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 60),
                ),
                TextSpan(
                  text: 'New',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 60),
                ),
                TextSpan(
                  text: 'Age',
                  style: TextStyle(color: Colors.deepOrangeAccent, fontWeight: FontWeight.bold, fontSize: 60),
                ),
                TextSpan(
                  text: ' Devs',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 60),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Text(
            "Develop The Idea",
            style: TextStyle(color: Colors.white,  fontSize: 20),
          )

        ],
      ),
    );

  }


  Widget slideTwo() {

    return Container(
      decoration: BoxDecoration(

          image: DecorationImage(
              image: AssetImage("images/ing_bg.png"),
              fit: BoxFit.fill
          )
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.fromLTRB(40, 10, 10, 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Get A Premium Quality Website",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 36),
                  ),
                  Text(
                    "\nAre you looking for Professional Website for your business? Let us be your assistance. We create a creative and modern website from very scratch using advanced & modern web technologies.",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.grey[300], fontSize: 20),
                  )

                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 40, 40),
              child: Center(
                child: Image.asset("images/img_laptop.png"),
              ),
            ),
          ),
        ],
      ),
    );

  }


  Widget slideThree() {

    return Container(
      decoration: BoxDecoration(

          image: DecorationImage(
              image: AssetImage("images/ing_bg.png"),
              fit: BoxFit.fill
          )
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.fromLTRB(40, 10, 10, 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Get Your App Developed",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 36),
                  ),
                  Text(
                    "\nAre you looking for Cross-Platform Application \"IOS, Android, Web, Native\"? Let us be your assistance. We have professional android, IOS app developer to develop high quality mobile apps for you. We can also develop a web based admin panel for your mobile app development.",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.grey[300], fontSize: 20),
                  )

                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 40, 40),
              child: Center(
                child: Image.asset("images/img_three.png"),
              ),
            ),
          ),
        ],
      ),
    );

  }


  Widget slideFour() {

    return Container(
      decoration: BoxDecoration(

          image: DecorationImage(
              image: AssetImage("images/ing_bg.png"),
              fit: BoxFit.fill
          )
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.fromLTRB(40, 10, 10, 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Draw Your Illustration Vectorized",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 36),
                  ),
                  Text(
                    "\nAre you searching for the Top Quality graphic design services? If yes then Let us be your assistance. We make business logo designs, banner design, poster design, packet design and t-shirt design that fall into the category of modern, unique, professional, minimal and creative way.",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.grey[300], fontSize: 20),
                  )

                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 40, 40),
              child: Center(
                child: Image.asset("images/img_four.png"),
              ),
            ),
          ),
        ],
      ),
    );

  }


  void autoSlide() async {

    // Timer.periodic(Duration(seconds:3), (Timer t)  {
    //
    //   setState(() {
    //     if(selectedIndex < widgets.length-1){
    //       selectedIndex++;
    //     }else{
    //       selectedIndex = 0;
    //     }
    //
    //     pageController.animateToPage(selectedIndex, duration: Duration(seconds: 1), curve: Curves.linear).then((_) => autoSlide());
    //
    //   });
    //
    // });

    Future.delayed(Duration(seconds: 2)).then((_) {
      int nextPage = pageController.page.round() + 1;

      if (nextPage == widgets.length) {
        nextPage = 0;
      }

      pageController
          .animateToPage(nextPage, duration: Duration(seconds: 1), curve: Curves.linear)
          .then((_) => autoSlide());
    });

  }



  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    ThemesMode().init(context);


    return Container(
      height: ScreenConfig.screenHeight-62,
      //width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 60,
            child: PageView.builder(
                controller: pageController,
                scrollDirection: Axis.horizontal,
                itemCount: widgets.length,
                onPageChanged: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                itemBuilder: (context, index) {

                  return widgets[index];

                },
              ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 60,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Row(
                  children: [
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: CupertinoButton(
                        onPressed: () {
                          setState(() {
                            if(selectedIndex > 0){
                              selectedIndex--;
                            }else{
                              selectedIndex = widgets.length;
                            }

                            pageController.jumpToPage(selectedIndex);
                          });
                        },
                        padding: EdgeInsets.zero,
                        color: kBgLightColor,
                        child: FaIcon(
                          FontAwesomeIcons.angleLeft, size:18,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right:3,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          widgets.length,(index) => buildDot(index: index),
                        ),
                      ),
                    ),

                    Spacer(),
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: CupertinoButton(
                        onPressed: () {
                          setState(() {
                            if(selectedIndex < widgets.length-1){
                              selectedIndex++;
                            }else{
                              selectedIndex = 0;
                            }

                            pageController.jumpToPage(selectedIndex);
                          });
                        },
                        padding: EdgeInsets.zero,
                        color: kBgLightColor,
                        child: FaIcon(
                          FontAwesomeIcons.angleRight, size:18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }




  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 10),
      height: 5,
      width: selectedIndex == index ? 100 : 30,
      decoration: BoxDecoration(
        color: ThemesMode.isDarkMode?selectedIndex == index ? Colors.white : Colors.grey: selectedIndex == index ? Colors.black : Colors.black45,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }


}
