import 'package:flutter/material.dart';
import 'package:newage_portfolio/components/footer.dart';
import 'package:newage_portfolio/components/header.dart';
import 'package:newage_portfolio/components/side_menu.dart';
import 'package:newage_portfolio/utils/screen_config.dart';
import 'package:newage_portfolio/utils/themes_mode.dart';


class MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ThemesMode().init(context);
    ScreenConfig().init(context);

    return Scaffold(
      body: Column(
        children: [
          Header(),
          Divider(height: 1, thickness: 1,),

        ],
      ),
    );
  }
}
