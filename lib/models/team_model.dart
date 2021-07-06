import 'package:flutter/material.dart';

class TeamModel {

  final String imageUrl;
  final String name;
  final String designition;
  final VoidCallback onPressed;

  TeamModel({this.imageUrl, this.name, this.designition, this.onPressed});

}


List<TeamModel> teams () {
  List<TeamModel> teamList = [];

  String imageOne = "https://scontent.fcgp17-1.fna.fbcdn.net/v/t1.6435-9/153742946_442536403659964_3791941707834988938_n.jpg?_nc_cat=107&ccb=1-3&_nc_sid=174925&_nc_ohc=kvgiDVAKhqkAX_fFcBg&tn=K-4nvTR_H5Mwuw87&_nc_ht=scontent.fcgp17-1.fna&oh=db1495529d6ce878d6fc130626bc7469&oe=60E945EA";
  String imageTwo = "https://scontent.fcgp17-1.fna.fbcdn.net/v/t1.6435-9/81556289_1050633251936063_6888778696950284288_n.jpg?_nc_cat=110&ccb=1-3&_nc_sid=174925&_nc_ohc=7ug7AVYmg3kAX8Z1_Gc&_nc_ht=scontent.fcgp17-1.fna&oh=7a441d986e3ab6ac28ad24839ce808f4&oe=60E962DD";
  String imageThree = "https://scontent.fcgp17-1.fna.fbcdn.net/v/t1.6435-9/58922485_865702543769989_8699806542695759872_n.jpg?_nc_cat=101&_nc_rgb565=1&ccb=1-3&_nc_sid=ad2b24&_nc_ohc=fB4sexCHnEsAX_wDx23&_nc_ht=scontent.fcgp17-1.fna&oh=88ddfaa2781d498a2f4903539c858bdb&oe=60E9141F";
  teamList.add(TeamModel(
    imageUrl: imageOne,
    name: "Md. Imam Hossain",
    designition: "Software Engineer",
    onPressed: () {},
  ));
  teamList.add(TeamModel(
    imageUrl: imageThree,
    name: "Abdullay Xayed",
    designition: "Software Engineer",
    onPressed: () {},
  ));
  teamList.add(TeamModel(
    imageUrl: imageTwo,
    name: "Md. Rafsan Jani Rafin",
    designition: "Software Engineer",
    onPressed: () {},
  ));
  return teamList;
}
