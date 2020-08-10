import 'package:flutter/material.dart';
import 'package:order_food/models/Order.dart';
import 'package:order_food/providers/BaseProvider.dart';

class CartProvider extends BaseProvider {
  List<Order> orderList = <Order>[];

  void addOrder(Order order) {
    orderList.add(order);
    notifyListeners();
  }

  void removeOrder(Order order) {
    orderList.removeWhere((o) => o == order);
    notifyListeners();
  }

  void update(Order oldOrder, Order newOrder) {
    final index = orderList.indexWhere((o) => o == oldOrder);
    orderList[index] = newOrder;
    notifyListeners();
  }
}
