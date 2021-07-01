import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newage_portfolio/components/nav_button.dart';
import 'package:newage_portfolio/utils/responsive.dart';
import 'package:newage_portfolio/utils/screen_config.dart';
import 'package:newage_portfolio/utils/themes_mode.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    ThemesMode().init(context);


    return Container(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
      height: 60,

      child: Row(
        children: <Widget>[

          Text(
            "NEWAGE DEVS",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),

          Spacer(),

          if (!isMobile(context))
            Row(
              children: [
                NavButton(
                  title: 'Home',
                  icon: Icons.home,
                  onPressed: () {  },
                  isActive: true,

                ),
                NavButton(
                  title: 'Projects',
                  icon: Icons.code_rounded,
                  onPressed: () {  },
                  isActive: false,

                ),
                NavButton(
                  title: 'About',
                  icon: Icons.info_rounded,
                  onPressed: () {  },
                  isActive: false,

                ),
                NavButton(
                  title: 'Contact',
                  icon: Icons.phone,
                  onPressed: () {  },
                  isActive: false,

                ),
              ],
            ),

          if (isMobile(context))
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              }
            )
        ],
      ),
    );
  }
}