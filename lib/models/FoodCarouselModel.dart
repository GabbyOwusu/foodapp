import 'package:flutter/cupertino.dart';

class FoodCard {
  String headingImage;
  int height;
  Color color;
  String title;
  String image;
  List<String> menu;

  FoodCard(
      {this.color,
      this.headingImage,
      this.image,
      this.title,
      this.height,
      this.menu});
}
