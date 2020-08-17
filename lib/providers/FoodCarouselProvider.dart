import 'package:flutter/material.dart';
import 'package:order_food/models/FoodCarouselModel.dart';
import 'package:order_food/providers/BaseProvider.dart';

class CardProvider extends BaseProvider {
  List<FoodCard> get items {
    return <FoodCard>[
      FoodCard(
        color: Color.fromRGBO(251, 84, 71, 1),
        title: 'McDonnald\'s',
        headingImage: 'images/macdonnalds.png',
        image: 'images/food.png',
        snacks: [
          'images/food.png',
          'images/fries1.png',
          'images/burger1.png',
          'images/md1.png',
          'images/fries1.png',
          'images/md2.png',
        ],
        menu: [
          'images/md1.png',
          'images/md2.png',
          'images/md3.png',
          'images/fries1.png',
          'images/fries2.png',
        ],
      ),
      FoodCard(
          color: Color.fromRGBO(0, 150, 127, 1),
          title: 'Starbucks',
          headingImage: 'images/starbucks.png',
          image: 'images/coffee2.png',
          snacks: [
            'images/fries1.png',
            'images/fries1.png',
            'images/fries1.png',
            'images/fries1.png',
            'images/fries1.png',
            'images/fries1.png',
          ],
          menu: [
            'images/hotdog1.png',
            'images/hotdog1.png',
            'images/hotdog1.png',
            'images/hotdog1.png',
            'images/hotdog1.png',
          ]),
      FoodCard(
        color: Color.fromRGBO(26, 186, 24, 1),
        title: 'Subway',
        headingImage: 'images/subway.png',
        image: 'images/subwayfood.png',
        snacks: [
          'images/fries1.png',
          'images/fries1.png',
          'images/fries1.png',
          'images/fries1.png',
          'images/fries1.png',
          'images/fries1.png',
        ],
        menu: [
          'images/subway1.png',
          'images/subway2.png',
          'images/subway3.png',
          'images/subway5.png',
          'images/subway6.png',
        ],
      ),
      FoodCard(
          color: Color.fromRGBO(255, 87, 96, 1),
          title: 'KFC',
          headingImage: 'images/kfc.png',
          image: 'images/chickenbucket.png',
          snacks: [
            'images/fries1.png',
            'images/fries1.png',
            'images/fries1.png',
            'images/fries1.png',
            'images/fries1.png',
            'images/fries1.png',
          ],
          menu: [
            'images/chicken1.png',
            'images/chicken2.png',
            'images/chicken3.png',
            'images/chicken4.png',
            'images/chicken5.png',
          ]),
      FoodCard(
        color: Colors.blue,
        title: 'Dominos',
        headingImage: 'images/domino.png',
        image: 'images/pizza.png',
        snacks: [
          'images/fries1.png',
          'images/fries1.png',
          'images/fries1.png',
          'images/fries1.png',
          'images/fries1.png',
          'images/fries1.png',
        ],
        menu: [
          'images/pizza1.png',
          'images/pizza2.png',
          'images/pizza3.png',
          'images/pizza4.png',
          'images/pizza5.png',
        ],
      ),
      FoodCard(
          color: Colors.black,
          title: 'Shake Shack',
          headingImage: 'images/shake.png',
          image: 'images/burger.png',
          snacks: [
            'images/fries1.png',
            'images/fries1.png',
            'images/fries1.png',
            'images/fries1.png',
            'images/fries1.png',
            'images/fries1.png',
          ],
          menu: [
            'images/burger1.png',
            'images/burger2.png',
            'images/burger3.png',
            'images/burger4.png',
            'images/burger5.png',
          ]),
    ];
  }
}
