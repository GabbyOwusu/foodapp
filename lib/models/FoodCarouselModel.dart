import 'package:flutter/cupertino.dart';

class FoodCard {
  String headingImage;
  int height;
  Color color;
  String title, description;
  String image;
  List<String> snacks;
  List<String> menu;
  List<String> foodName;

  FoodCard(
      {this.color,
      this.description,
      this.foodName,
      this.snacks,
      this.headingImage,
      this.image,
      this.title,
      this.height,
      this.menu});
}
