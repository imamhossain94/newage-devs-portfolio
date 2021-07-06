import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newage_portfolio/utils/constants.dart';
import 'package:newage_portfolio/utils/screen_config.dart';
import 'package:newage_portfolio/utils/themes_mode.dart';

class NavButton extends StatelessWidget {
  NavButton({
    @required this.title,
    @required this.onPressed,
    this.buttonColor,
    this.textColor,
    this.icon,
    this.isActive
  });

  final String title;
  final IconData icon;
  final bool isActive;
  final Color buttonColor, textColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    ThemesMode().init(context);

    return Container(
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: buttonColor==null?ThemesMode.isDarkMode?Colors.black87:Colors.white:buttonColor,
            borderRadius: BorderRadius.circular(8),
            border: isActive?Border.all(color: ThemesMode.isDarkMode?Colors.white30:kBgLightColor, width: 1):null
        ),
        child: Material(
          color: Colors.transparent,
          child: Tooltip(
            message: title,
            child: InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: onPressed,
              child: Padding(
                padding: EdgeInsets.fromLTRB(8, 5, 8, 5),
                child: Row(
                  children: [
                    Icon(icon),
                    SizedBox(width: 5,),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: textColor==null?ThemesMode.isDarkMode?kPrimaryLightColor:kPrimaryDarkColor:textColor,
                      ),
                    ),
                  ],
                )
              ),
            ),
          ),
        )
    );
  }

}