import 'package:flutter/material.dart';
import 'package:order_food/models/Order.dart';

class OrderCard extends StatelessWidget {
  final Order order;

  final VoidCallback onDelete;
  OrderCard({
    @required this.order,
    @required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        children: [
          Image.asset(order.food.image, width: 60),
          SizedBox(width: 50),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Big Mac Burger',
                  style: TextStyle(fontFamily: 'SanFransisco', fontSize: 17),
                ),
                Text(
                  'AED 24',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
              icon: Icon(Icons.remove_circle_outline),
              color: Colors.red,
              onPressed: () {
                onDelete();
              })
        ],
      ),
    );
  }
}
