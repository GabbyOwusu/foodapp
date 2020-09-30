import 'package:order_food/models/Order.dart';
import 'package:order_food/providers/BaseProvider.dart';

class CartProvider extends BaseProvider {
  List<Order> _orderList = <Order>[];

  List<Order> get orders => _orderList.reversed.toList();

  void addOrder(Order order) {
    _orderList.add(order);
    notifyListeners();
  }

  void removeOrder(Order order) {
    _orderList.indexWhere((o) => o == order);
    notifyListeners();
  }

  void update(Order oldOrder, Order newOrder) {
    final index = _orderList.indexWhere((o) => o == oldOrder);
    _orderList[index] = newOrder;
    notifyListeners();
  }
}
