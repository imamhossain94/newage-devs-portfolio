import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newage_portfolio/components/nav_button.dart';
import 'package:newage_portfolio/components/theme_button.dart';
import 'package:newage_portfolio/controllers/MenuController.dart';
import 'package:newage_portfolio/controllers/ScrollController.dart';
import 'package:newage_portfolio/utils/constants.dart';
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


  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    ThemesMode().init(context);


    List<Widget> navButtons= [
      ThemeButton(height: 40, width: 40,),
      NavButton(
        title: 'Home',
        icon: Icons.home,
        onPressed: () {
          context.read<HomeScrollController>().getScrollPosition(0);
          context.read<HomeScrollController>().getSelectedIndex(0);
        },
        isActive: context.read<HomeScrollController>().selectedIndex == 0? true : false,
      ),
      NavButton(
        title: 'Projects',
        icon: Icons.code_rounded,
        onPressed: () {
          context.read<HomeScrollController>().getScrollPosition(ScreenConfig.screenHeight-60);
          context.read<HomeScrollController>().getSelectedIndex(1);
        },
        isActive: context.read<HomeScrollController>().selectedIndex == 1? true : false,
      ),
      NavButton(
        title: 'About',
        icon: Icons.info_rounded,
        onPressed: () {
          context.read<HomeScrollController>().getScrollPosition(ScreenConfig.screenHeight*3-120);
          context.read<HomeScrollController>().getSelectedIndex(2);
        },
        isActive: context.read<HomeScrollController>().selectedIndex == 2? true : false,
      ),
      NavButton(
        title: 'Contact',
        icon: Icons.phone,
        onPressed: () {
          context.read<HomeScrollController>().getScrollPosition(ScreenConfig.screenHeight*5-110);
          context.read<HomeScrollController>().getSelectedIndex(3);
        },
        isActive: context.read<HomeScrollController>().selectedIndex == 3? true : false,
      ),
    ];



    return Container(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
      height: 60,
      width: ScreenConfig.screenWidth,

      child: Row(
        children: <Widget>[
          Container(
            height: 40,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: ThemesMode.isDarkMode?Colors.black87:kBgLightColor,
            ),
            child: Text(
              "NEWAGE DEVS",
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          if(!Responsive.isDesktop(context))
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ThemeButton(height: 40, width: 40,),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: CupertinoButton(
                    onPressed: context.read<MenuController>().controlMenu,
                    padding: EdgeInsets.zero,
                    color: ThemesMode.isDarkMode?Colors.black87:kBgLightColor,
                    child: Align(alignment: Alignment.center, child: Icon(Icons.menu, color: ThemesMode.isDarkMode?Colors.white:Colors.black,)),
                  ),
                ),
              ],
            )
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




