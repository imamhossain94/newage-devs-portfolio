import 'package:flutter/material.dart';
import 'package:newage_portfolio/utils/responsive.dart';
import 'package:newage_portfolio/utils/screen_config.dart';

class SlideTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/ing_bg.png"),
              fit: BoxFit.fill
          )
      ),
      child: Responsive(
          mobile: Column(
            children: [
              SlideImage(imageUrl: "images/img_laptop.png"),
              SlideContent(title: "Get A Premium Quality Website", description: "\nAre you looking for Professional Website for your business? Let us be your assistance. We create a creative and modern website from very scratch using advanced & modern web technologies.")
            ],
          ),
          tablet: Column(
            children: [
              SlideImage(imageUrl: "images/img_laptop.png"),
              SlideContent(title: "Get A Premium Quality Website", description: "\nAre you looking for Professional Website for your business? Let us be your assistance. We create a creative and modern website from very scratch using advanced & modern web technologies.")
            ],
          ),
          desktop: Row(
            children: [
              SlideImage(imageUrl: "images/img_laptop.png"),
              SlideContent(title: "Get A Premium Quality Website", description: "\nAre you looking for Professional Website for your business? Let us be your assistance. We create a creative and modern website from very scratch using advanced & modern web technologies.")
            ],
          ),
      )

    );

  }




}


class SlideImage extends StatelessWidget {
  final String imageUrl;

  const SlideImage({Key key, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: !Responsive.isDesktop(context)? 3: 1,
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Center(
          child: Align(alignment: !Responsive.isMobile(context)?  Alignment.center : Alignment.bottomCenter, child: Image.asset(imageUrl)),
        ),
      ),
    );
  }
}



class SlideContent extends StatelessWidget {
  final String title;
  final String description;

  const SlideContent({Key key, this.title, this.description}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    double titleFontSize = !Responsive.isMobile(context)? 36 : 22;
    double subTitleFontSize = !Responsive.isMobile(context)? 24 : 18;

    return Expanded(
      flex: !Responsive.isDesktop(context)? 2: 1,
      child: Container(
        padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              title,
              textAlign: !Responsive.isDesktop(context)? TextAlign.center: TextAlign.start,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: titleFontSize),
            ),
            Text(
              description,
                textAlign: !Responsive.isDesktop(context)? TextAlign.center: TextAlign.start,
              style: TextStyle(color: Colors.grey[300], fontSize: subTitleFontSize),
            )
          ],
        ),
      ),
    );
  }
}

