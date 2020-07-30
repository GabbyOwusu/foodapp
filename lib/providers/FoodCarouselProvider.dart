import 'package:flutter/material.dart';
import 'package:order_food/models/FoodCarouselCard.dart';
import 'package:order_food/providers/BaseProvider.dart';

class CardProvider extends BaseProvider {
  List<FoodCard> get items {
    return <FoodCard>[
      FoodCard(
          color: Color.fromRGBO(251, 84, 71, 1),
          title: 'McDonnald\'s',
          headingImage: 'images/macdonnalds.png',
          image: 'images/food.png'),
      FoodCard(
          color: Color.fromRGBO(0, 150, 127, 1),
          title: 'Starbucks',
          headingImage: 'images/starbucks.png',
          image: 'images/food.png'),
      FoodCard(
          color: Color.fromRGBO(26, 186, 24, 1),
          title: 'Subway',
          headingImage: 'images/subway.png',
          image: 'images/subwayfood.png'),
      FoodCard(
          color: Color.fromRGBO(255, 87, 96, 1),
          title: 'KFC',
          headingImage: 'images/kfc.png',
          image: 'images/chickenbucket.png'),
    ];
  }
}

// class SnackItemProvider extends BaseProvider {
//   List<SnackItems> get snacks {
//     return <SnackItems>[
//       SnackItems(
//         color:
//       )
//     ];
//   }
// }
