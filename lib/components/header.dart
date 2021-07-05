import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newage_portfolio/components/nav_button.dart';
import 'package:newage_portfolio/controllers/MenuController.dart';
import 'package:newage_portfolio/controllers/ScrollController.dart';
import 'package:newage_portfolio/utils/responsive.dart';
import 'package:newage_portfolio/utils/screen_config.dart';
import 'package:newage_portfolio/utils/themes_mode.dart';
import 'package:provider/provider.dart';

class Header extends StatefulWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {


  int selectedIndex = 0;



  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    ThemesMode().init(context);


    List<Widget> navButtons= [
      NavButton(
        title: 'Home',
        icon: Icons.home,
        onPressed: () {
          context.read<HomeScrollController>().getScrollPosition(0);
          setState(() {
            selectedIndex = 0;
          });
        },
        isActive: selectedIndex == 0? true : false,
      ),
      NavButton(
        title: 'Projects',
        icon: Icons.code_rounded,
        onPressed: () {
          context.read<HomeScrollController>().getScrollPosition(ScreenConfig.screenHeight-60);
          setState(() {
            selectedIndex = 1;
          });
        },
        isActive: selectedIndex == 1? true : false,
      ),
      NavButton(
        title: 'About',
        icon: Icons.info_rounded,
        onPressed: () {
          context.read<HomeScrollController>().getScrollPosition(ScreenConfig.screenHeight*2-120);
          setState(() {
            selectedIndex = 2;
          });
        },
        isActive: selectedIndex == 2? true : false,
      ),
      NavButton(
        title: 'Contact',
        icon: Icons.phone,
        onPressed: () {
          context.read<HomeScrollController>().getScrollPosition(ScreenConfig.screenHeight*3);
          setState(() {
            selectedIndex = 3;
          });
        },
        isActive: selectedIndex == 3? true : false,
      ),
    ];



    return Container(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
      height: 60,
      width: ScreenConfig.screenWidth,

      child: Row(
        children: <Widget>[
          Text(
            "NEWAGE DEVS",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
          if(!Responsive.isDesktop(context))
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                  icon: Icon(Icons.menu),
                  // onPressed: () {
                  //
                  //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  //     content: Text("Sending Message"),
                  //   ));
                  // },
                  onPressed: context.read<MenuController>().controlMenu,
              ),
            ),
          ),
          if (!Responsive.isMobile(context) && !Responsive.isTablet(context))
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: navButtons.length,
                  itemBuilder: (context, i) {
                    return navButtons[i];
                  },
                ),
              ),
            )
        ],
      ),
    );
  }
}




