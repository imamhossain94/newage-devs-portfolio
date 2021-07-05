import 'package:flutter/material.dart';
import 'package:newage_portfolio/utils/responsive.dart';

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
