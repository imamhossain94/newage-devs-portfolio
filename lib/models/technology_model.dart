import 'package:flutter/material.dart';

class TechnologyModel {

  final String imageUrl;
  final String title;
  final String description;
  final VoidCallback onPressed;

  TechnologyModel({this.imageUrl, this.title, this.description, this.onPressed});

}


List<TechnologyModel> technologies () {
  List<TechnologyModel> projectsList = [];

  //big
  projectsList.add(TechnologyModel(
    imageUrl: "https://image.flaticon.com/icons/png/512/2933/2933818.png",
    title: "ReactJs",
    description: "React is a free and open-source front-end JavaScript library for building user interfaces or UI components.",
    onPressed: () {},
  ));
  //small
  projectsList.add(TechnologyModel(
    imageUrl: "https://image.flaticon.com/icons/png/512/1126/1126012.png",
    title: "ReactJs",
    description: "React is a free and open-source front-end JavaScript library for building user interfaces or UI components.",
    onPressed: () {},
  ));
  //small
  projectsList.add(TechnologyModel(
    imageUrl: "https://image.flaticon.com/icons/png/512/1126/1126012.png",
    title: "ReactJs",
    description: "React is a free and open-source front-end JavaScript library for building user interfaces or UI components.",
    onPressed: () {},
  ));
  //small
  projectsList.add(TechnologyModel(
    imageUrl: "https://image.flaticon.com/icons/png/512/1126/1126012.png",
    title: "ReactJs",
    description: "React is a free and open-source front-end JavaScript library for building user interfaces or UI components.",
    onPressed: () {},
  ));
  //small
  projectsList.add(TechnologyModel(
    imageUrl: "https://image.flaticon.com/icons/png/512/1126/1126012.png",
    title: "ReactJs",
    description: "React is a free and open-source front-end JavaScript library for building user interfaces or UI components.",
    onPressed: () {},
  ));

  return projectsList;
}
