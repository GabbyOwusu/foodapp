import 'package:order_food/models/FoodCarouselCard.dart';

class Order {
  final int quantity;
  final FoodCard food;

  Order({this.food, this.quantity});
  int get hashCode => this.hashCode;

  bool operator ==(dynamic other) {
    return food == other.food && quantity == other.quantity;
  }
}
