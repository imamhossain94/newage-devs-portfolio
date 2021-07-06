import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newage_portfolio/provider/theme_provider.dart';
import 'package:newage_portfolio/utils/constants.dart';
import 'package:newage_portfolio/utils/themes_mode.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ThemeButton extends StatefulWidget {
  final double height;
  final double width;

  const ThemeButton({Key key, @required this.height, @required this.width}) : super(key: key);
  @override
  _ThemeButtonState createState() => _ThemeButtonState();
}

class _ThemeButtonState extends State<ThemeButton> {
  List<String> themesList;
  IconData icon;

  @override
  void initState() {
    themesList = themes;
    icon = Icons.brightness_7_rounded;
    super.initState();
  }

  void onThemeChanged(String value) async {
    ThemeNotifier themeNotifier = Provider.of<ThemeNotifier>(context, listen: false);
    var prefs = await SharedPreferences.getInstance();
    if (value == systemDefault) {
      themeNotifier .setThemeMode(ThemeMode.system);
      icon = Icons.brightness_auto_rounded;
    } else if (value == dark) {
      themeNotifier.setThemeMode(ThemeMode.dark);
      icon = Icons.nights_stay_rounded;
    } else {
      themeNotifier.setThemeMode(ThemeMode.light);
      icon = Icons.brightness_7_rounded;
    }
    prefs.setString(appTheme, value);
  }

  @override
  Widget build(BuildContext context) {
    ThemesMode().init(context);

    return  Padding(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: SizedBox(
        height: widget.height,
        width: widget.width,
        child: CupertinoButton(
          onPressed: () async {

            var prefs = await SharedPreferences.getInstance();
            String theme = prefs.getString(appTheme);
            if (theme == themesList[0] || theme == null || theme == "" || theme == systemDefault) {
              onThemeChanged(themesList[1]);
            }else if(theme == themesList[1]) {
              onThemeChanged(themesList[2]);
            }else if(theme == themesList[2]){
              onThemeChanged(themesList[1]);
            }

          },
          padding: EdgeInsets.zero,
          color: ThemesMode.isDarkMode?Colors.black87:kBgLightColor,
          child: Align(alignment: Alignment.center, child: Icon(icon, color: ThemesMode.isDarkMode?Colors.orange:Colors.orange,)),
        ),
      ),
    );
  }
}
