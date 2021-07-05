import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newage_portfolio/controllers/ScrollController.dart';
import 'package:newage_portfolio/provider/theme_provider.dart';
import 'package:newage_portfolio/screens/main_screen.dart';
import 'package:newage_portfolio/utils/themes.dart';
import 'package:newage_portfolio/utils/themes_mode.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'controllers/MenuController.dart';
import 'utils/constants.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Future<SharedPreferences> prefs = SharedPreferences.getInstance();
  //await SharedPrefService().init();

  prefs.then((value) {
    runApp(
      ChangeNotifierProvider<ThemeNotifier>(
        create: (BuildContext context) {
          String theme = value.getString(appTheme);
          if (theme == null ||
              theme == "" ||
              theme == systemDefault) {
            value.setString(appTheme, systemDefault);
            return ThemeNotifier(ThemeMode.system);
          }
          return ThemeNotifier(theme == dark ? ThemeMode.dark : ThemeMode.light);
        },
        child: MyApp(),
      ),
    );
  });

}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    ThemesMode().init(context);
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().lightTheme(),
      darkTheme: AppTheme().darkTheme(),
      themeMode: themeNotifier.getThemeMode(),

      // initialRoute: '/',
      // routes: {
      //   '/': (context) => MainScreen(),
      //   //'/second': (context) => SecondScreen(),
      // },


      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
          ),
          ChangeNotifierProvider(
            create: (context) => HomeScrollController(),
          ),
        ],
        child: MainScreen(),
      ),

    );
  }
}