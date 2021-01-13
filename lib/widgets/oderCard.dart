import 'package:flutter/material.dart';
import 'package:order_food/models/FoodCarouselModel.dart';
import 'package:order_food/models/Order.dart';

class OrderCard extends StatefulWidget {
  final FoodCard foodTitle;
  final Order order;
  final int index;
  final Function onDelete;

  OrderCard({
    @required this.foodTitle,
    @required this.index,
    @required this.order,
    @required this.onDelete,
  });

  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListTile(
        leading: Image.asset(
          widget.order.food.menu[widget.index],
          width: 60,
        ),
        title: Text(
          widget.order.food.foodName[widget.index],
          style: TextStyle(
            fontFamily: 'SanFransisco',
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          'AED 24',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline),
          color: Colors.red,
          onPressed: widget.onDelete,
        ),
      ),
    );
  }
}
