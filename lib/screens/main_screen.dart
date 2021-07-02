import 'package:flutter/material.dart';
import 'package:newage_portfolio/components/header.dart';
import 'package:newage_portfolio/components/nav_button.dart';
import 'package:newage_portfolio/utils/screen_config.dart';
import 'package:newage_portfolio/utils/themes_mode.dart';

import 'components/projects_grid.dart';
import 'components/slider/custom_slider.dart';
import 'components/technologies_section.dart';


class MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ThemesMode().init(context);
    ScreenConfig().init(context);

    return Scaffold(
      body:

      Column(
        children: <Widget>[
          Header(),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: <Widget>[
                    CustomSlider(),
                    SizedBox(
                      height: 120,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          NavButton(
                            title: 'All    ',
                            icon: Icons.home,
                            onPressed: () {  },
                            isActive: true,

                          ),
                          NavButton(
                            title: 'Mobile',
                            icon: Icons.phone_android_rounded,
                            onPressed: () {  },
                            isActive: false,

                          ),
                          NavButton(
                            title: 'Web',
                            icon: Icons.web_rounded,
                            onPressed: () {  },
                            isActive: false,

                          ),
                          NavButton(
                            title: 'Graphic',
                            icon: Icons.color_lens_rounded,
                            onPressed: () {  },
                            isActive: false,

                          ),
                        ],
                      ),
                    ),
                    ProjectGrid(),
                    TechnologiesSection()


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
