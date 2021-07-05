import 'package:flutter/material.dart';
import 'package:newage_portfolio/utils/responsive.dart';

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
