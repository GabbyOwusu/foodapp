import 'package:flutter/cupertino.dart';

class FoodCard {
  String headingImage;
  int height;
  Color color;
  String title;
  String image;
  List<String> snacks;
  List<String> menu;

  FoodCard(
      {this.color,
      this.snacks,
      this.headingImage,
      this.image,
      this.title,
      this.height,
      this.menu});
}
