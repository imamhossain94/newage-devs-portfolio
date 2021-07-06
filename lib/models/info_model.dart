import 'package:flutter/material.dart';

class InfoModel {

  final String imageUrl;
  final String title;
  final String description;
  final VoidCallback onPressed;

  InfoModel({this.imageUrl, this.title, this.description, this.onPressed});

}


List<InfoModel> info () {
  List<InfoModel> infoList = [];

  //big
  infoList.add(InfoModel(
    imageUrl: "https://image.flaticon.com/icons/png/512/609/609349.png",
    title: "Quality Service Provider",
    description: "Our Goal is to provide a quality service to our partners. That’s How we build a long term relationship with you.",
    onPressed: () {},
  ));
  //small
  infoList.add(InfoModel(
    imageUrl: "https://image.flaticon.com/icons/png/512/609/609437.png",
    title: "24/7 Live Support",
    description: "We provide 24/7 live support. Our key feature is after sale service.",
    onPressed: () {},
  ));
  //small
  infoList.add(InfoModel(
    imageUrl: "https://image.flaticon.com/icons/png/512/609/609340.png",
    title: "Experts Vision",
    description: "We are a team of experts. Each and every sector contains quality provider. So, Feel free to share your need.",
    onPressed: () {},
  ));

  return infoList;
}
