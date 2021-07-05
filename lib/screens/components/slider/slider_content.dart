import 'package:flutter/material.dart';
import 'package:newage_portfolio/screens/components/slider/slide_content.dart';
import 'package:newage_portfolio/screens/components/slider/slide_image.dart';
import 'package:newage_portfolio/utils/responsive.dart';

class SliderContent extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String backgroundImage;

  const SliderContent({Key key, @required this.image, @required this.title, @required this.description, @required this.backgroundImage}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(backgroundImage),
              fit: BoxFit.fill
          )
      ),
      child: Responsive(
          mobile: Column(
            children: [
              SlideImage(imageUrl: image),
              SlideContent(title: title, description: description)
            ],
          ),
          tablet: Column(
            children: [
              SlideImage(imageUrl: image),
              SlideContent(title: title, description: description)
            ],
          ),
          desktop: Row(
            children: [
              SlideImage(imageUrl: image),
              SlideContent(title: title, description: description)
            ],
          ),
      )
    );
  }
}




