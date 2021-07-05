import 'package:flutter/material.dart';
import 'package:newage_portfolio/components/header.dart';
import 'package:newage_portfolio/controllers/MenuController.dart';
import 'package:newage_portfolio/controllers/ScrollController.dart';
import 'package:newage_portfolio/controllers/build_app_drawer.dart';
import 'package:newage_portfolio/utils/screen_config.dart';
import 'package:newage_portfolio/utils/themes_mode.dart';
import 'package:provider/provider.dart';
import 'components/about_section.dart';
import 'components/contact_section.dart';
import 'components/projects_grid.dart';
import 'components/slider/custom_slider.dart';
import 'components/team_section.dart';
import 'components/technologies_section.dart';


class MainScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    ThemesMode().init(context);
    ScreenConfig().init(context);

    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      endDrawer: BuildAppDrawer(),
      body:Column(
        children: <Widget>[
          Header(),
          Expanded(
            child: SingleChildScrollView(
              controller: context.read<HomeScrollController>().scrollController,
              physics: BouncingScrollPhysics(),
              child: Container(
                child: Column(
                  children: <Widget>[
                    CustomSlider(),
                    ProjectGrid(),
                    TechnologiesSection(),
                    AboutSection(),
                    TeamSection(),
                    ContactSection()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


}


