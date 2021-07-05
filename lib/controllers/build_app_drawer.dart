import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:newage_portfolio/controllers/ScrollController.dart';
import 'package:newage_portfolio/utils/screen_config.dart';

import 'build_drawer_body_item.dart';


class BuildAppDrawer extends StatefulWidget {
  const BuildAppDrawer({
    Key key,
  }) : super(key: key);

  @override
  _BuildAppDrawerState createState() => _BuildAppDrawerState();
}

class _BuildAppDrawerState extends State<BuildAppDrawer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          //border: Border.all(width: 0.5, color: Colors.black12),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.9),
                blurRadius: 3,
                spreadRadius: 3,
                offset: Offset.zero)
          ]),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/ic_facebook.png',
                    height: 55,
                    width: 55,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "NEWAGE DEVS",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      //fontFamily: 'Audiowide',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
            BuildDrawerBodyItem(
                icon: Icons.home,
                text: 'Home',
                onTap: () {
                  context.read<HomeScrollController>().getScrollPosition(0);
                }),
            Divider(),

            BuildDrawerBodyItem(
                icon: Icons.code_rounded,
                text: 'Project',
                onTap: () {
                  context.read<HomeScrollController>().getScrollPosition(ScreenConfig.screenHeight-60);
                }),
            BuildDrawerBodyItem(
                icon: Icons.info_rounded,
                text: 'About',
                onTap: () {
                  context.read<HomeScrollController>().getScrollPosition(ScreenConfig.screenHeight*2-60);
                }),
            Divider(),
            BuildDrawerBodyItem(
                icon: Icons.phone,
                text: 'Contact',
                onTap: () async {
                  context.read<HomeScrollController>().getScrollPosition(ScreenConfig.screenHeight*3-60);
                }),

          ],
        ),
      ),
    );
  }
}
