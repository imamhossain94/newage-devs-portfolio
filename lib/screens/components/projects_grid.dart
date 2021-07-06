import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:newage_portfolio/components/nav_button.dart';
import 'package:newage_portfolio/models/projects_model.dart';
import 'package:newage_portfolio/utils/constants.dart';
import 'package:newage_portfolio/utils/responsive.dart';
import 'package:newage_portfolio/utils/screen_config.dart';
import 'package:newage_portfolio/utils/themes_mode.dart';


class ProjectGrid extends StatefulWidget {
  @override
  _ProjectGridState createState() => _ProjectGridState();
}

class _ProjectGridState extends State<ProjectGrid> {
  int selectedIndex = 0;
  List<ProjectsModel> projects;

  @override
  void initState() {
    if(projects != null) projects.clear();
    projects = allProject();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    ThemesMode().init(context);

    double bigCardSize = (((ScreenConfig.screenWidth-80)/2) * 0.85 >= 500? 500 : ((ScreenConfig.screenWidth-80)/2) * 0.85);
    double smallCardSize = ((ScreenConfig.screenWidth)/2+200) * 0.85 >= 480? 480 : ((ScreenConfig.screenWidth)/2+200) * 0.85;


    List<Widget> navButtons =
    [
      NavButton(
        title: 'All',
        icon: Icons.now_widgets_rounded,
        onPressed: () {
          if(projects != null) projects.clear();
          projects = allProject();
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
          if(projects != null) projects.clear();
          projects = mobileProject();
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
          if(projects != null) projects.clear();
          projects = webProject();
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
          if(projects != null) projects.clear();
          projects = graphicProject();
          setState(() {
            selectedIndex = 3;
          });
        },
        isActive: selectedIndex == 3? true : false,
      ),
    ];

    return Container(
      height: ScreenConfig.screenHeight,
      child: Column(
        children: [
          SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: navButtons,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(bottom: 40),
              height: ScreenConfig.screenHeight-160,
              child: Responsive(
                mobile: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    bigCard(
                        smallCardSize/2-20,
                        smallCardSize,
                        projects[0]
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        smallCard(smallCardSize/2-10, smallCardSize/2-10, projects[1]),
                        smallCard(smallCardSize/2-10, smallCardSize/2-10, projects[2])
                      ],
                    )
                  ],
                ),
                tablet: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    bigCard(bigCardSize, bigCardSize, projects[0]),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        smallCard(bigCardSize/2-10, bigCardSize/2-10, projects[1]),
                        smallCard(bigCardSize/2-10, bigCardSize/2-10, projects[2]),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        smallCard(bigCardSize/2-10, bigCardSize/2-10, projects[3]),
                        smallCard(bigCardSize/2-10, bigCardSize/2-10, projects[4]),
                      ],
                    )
                  ],
                ),
                desktop: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    bigCard(bigCardSize, bigCardSize, projects[0]),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        smallCard(bigCardSize/2-10, bigCardSize/2-10, projects[1]),
                        smallCard(bigCardSize/2-10, bigCardSize/2-10, projects[2]),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        smallCard(bigCardSize/2-10, bigCardSize/2-10, projects[3]),
                        smallCard(bigCardSize/2-10, bigCardSize/2-10, projects[4]),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );


  }

  Widget bigCard(double height, double width, ProjectsModel projectsModel) {

    double titleFontSize = responsiveText(10) > 16 ? 16: responsiveText(10);
    double descriptionFontSize = responsiveText(8) > 14 ? 14: responsiveText(8);

    bool isMobile = height == width/2-20;


    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(!isMobile?20:10),
      decoration: BoxDecoration(
        color: ThemesMode.isDarkMode?Colors.black87:kBgLightColor,
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child:

      !isMobile? Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Align(alignment: Alignment.center, child: Image.asset(projectsModel.imageUrl)),
              ),
            ),

            Text(projectsModel.title,
              style: TextStyle(color: ThemesMode.isDarkMode?Colors.white54 :Colors.black, fontSize: titleFontSize, fontWeight: FontWeight.bold),
            ),

            Text(projectsModel.description,
              style: TextStyle(color: ThemesMode.isDarkMode?Colors.white54 :Colors.black, fontSize: descriptionFontSize,),
            ),
        ],
      ): Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("images/img_studlab.png"),
                  fit: BoxFit.scaleDown
                )
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "StudLab",
                    style: TextStyle(color: Colors.black,fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "The StudLab is an educational application that is developed by newagedevs to support the students of BUBT. By using this application.... (Read more)",
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black,fontSize: 14,),
                  ),
                ],
              ),
            )
          )
        ],
      ),
    );
  }

  Widget smallCard(double height, double width, ProjectsModel projectsModel) {


    double titleFontSize = responsiveText(10) > 14 ? 14: responsiveText(10);
    double descriptionFontSize = responsiveText(8) > 13 ? 13: responsiveText(8);

    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
          color: ThemesMode.isDarkMode?Colors.black87:kBgLightColor,
          borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 60,
            width: 60,
            child: Image.asset(projectsModel.imageUrl),
          ),
          Text(
            projectsModel.title,
            textAlign: TextAlign.center,
            style: TextStyle(color: ThemesMode.isDarkMode?Colors.white54 :Colors.black,fontSize: titleFontSize, ),
          ),
          SizedBox(
            height: 30,
            width: width-80,
            child: CupertinoButton(
              onPressed: () {
                projectsModel.onPressed();
              },
              padding: EdgeInsets.zero,
              color: ThemesMode.isDarkMode?kBgDarkColor :Colors.white,
              child: Text('Visit', style: TextStyle(fontSize: descriptionFontSize),),
            ),
          ),
        ],
      ),
    );
  }

}


