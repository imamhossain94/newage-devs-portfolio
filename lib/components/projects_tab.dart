import 'package:flutter/material.dart';
import 'package:newage_portfolio/components/nav_button.dart';



class ProjectTab extends StatefulWidget {
  @override
  _ProjectTabState createState() => _ProjectTabState();
}

class _ProjectTabState extends State<ProjectTab> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    List<Widget> navButtons = [
      NavButton(
        title: 'All',
        icon: Icons.now_widgets_rounded,
        onPressed: () {
          //context.read<HomeScrollController>().getScrollPosition(0);
          setState(() {
            selectedIndex = 0;
          });
        },
        isActive: selectedIndex == 0? true : false,
      ),
      NavButton(
        title: 'Mobile',
        icon: Icons.phone_android_rounded,
        onPressed: () {
          //context.read<HomeScrollController>().getScrollPosition(ScreenConfig.screenHeight-60);
          setState(() {
            selectedIndex = 1;
          });
        },
        isActive: selectedIndex == 1? true : false,
      ),
      NavButton(
        title: 'Web',
        icon: Icons.web_asset_rounded,
        onPressed: () {
          //context.read<HomeScrollController>().getScrollPosition(ScreenConfig.screenHeight*2-120);
          setState(() {
            selectedIndex = 2;
          });
        },
        isActive: selectedIndex == 2? true : false,
      ),
      NavButton(
        title: 'Graphic',
        icon: Icons.color_lens_rounded,
        onPressed: () {
          //context.read<HomeScrollController>().getScrollPosition(ScreenConfig.screenHeight*3);
          setState(() {
            selectedIndex = 3;
          });
        },
        isActive: selectedIndex == 3? true : false,
      ),
    ];




    return SizedBox(
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: navButtons,
      ),
    );
  }
}


