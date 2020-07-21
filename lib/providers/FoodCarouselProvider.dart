import 'package:flutter/material.dart';
import 'package:order_food/models/FoodCarouselCard.dart';
import 'package:order_food/providers/BaseProvider.dart';

class CardProvider extends BaseProvider {
  List<FoodCard> get items {
    return <FoodCard>[
      FoodCard(
          color: Colors.red,
          title: 'KFC',
          headingImage: 'images/food.png',
          image: 'images/food.png'),
    ];
  }
}
