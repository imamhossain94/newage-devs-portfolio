import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newage_portfolio/screens/components/slider/slide_one.dart';
import 'package:newage_portfolio/screens/components/slider/slider_content.dart';
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
    widgets.add(SliderContent(
      backgroundImage: "images/slider_background.png",
      image: 'images/slide_image_one.png',
      title: 'Get A Premium Quality Website',
      description: '\nAre you looking for Professional Website for your business? Let us be your assistance. We create a creative and modern website from very scratch using advanced & modern web technologies.',
    ));
    widgets.add(SliderContent(
      backgroundImage: "images/slider_background.png",
      image: 'images/slide_image_two.png',
      title: 'Get Your App Developed',
      description: '\nAre you looking for Cross-Platform Application \"IOS, Android, Web, Native\"? Let us be your assistance. We have professional android, IOS app developer to develop high quality mobile apps for you. We can also develop a web based admin panel for your mobile app development.',
    ));
    widgets.add(SliderContent(
      backgroundImage: "images/slider_background.png",
      image: 'images/slide_image_three.png',
      title: 'Draw Your Illustration Vectorized',
      description: '\nAre you searching for the Top Quality graphic design services? If yes then Let us be your assistance. We make business logo designs, banner design, poster design, packet design and t-shirt design that fall into the category of modern, unique, professional, minimal and creative way.',
    ));
    //WidgetsBinding.instance.addPostFrameCallback((_) => autoSlide());
    super.initState();
  }


  void autoSlide() async {
    Future.delayed(Duration(seconds: 2)).then((_) {
      int nextPage = pageController.page.round() + 1;
      if (nextPage == widgets.length) nextPage = 0;

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
