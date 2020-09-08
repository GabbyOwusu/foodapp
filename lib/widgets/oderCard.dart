import 'package:flutter/material.dart';
import 'package:order_food/models/FoodCarouselModel.dart';
import 'package:order_food/models/Order.dart';

class OrderCard extends StatefulWidget {
  final FoodCard foodTitle;
  final Order order;

  final VoidCallback onDelete;
  OrderCard({
    @required this.foodTitle,
    @required this.order,
    @required this.onDelete,
  });

  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    ///  final provider = Provider.of<CartProvider>(context);
    return Container(
      height: 100,
      child: ListTile(
        leading: Image.asset(widget.order.food.image, width: 60),
        title: Text(
          widget.order.food.title,
          style: TextStyle(fontFamily: 'SanFransisco', fontSize: 17),
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

    // Row(
    //   children: [
    //     Image.asset(order.food.menu[index], width: 60),
    //     SizedBox(width: 50),
    //     Container(
    //       margin: EdgeInsets.only(top: 20),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Text(
    //             order.food.foodName[index],
    //             style: TextStyle(fontFamily: 'SanFransisco', fontSize: 17),
    //           ),
    //           Text(
    //             'AED 24',
    //             style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
    //           ),
    //         ],
    //       ),
    //     ),
    //     Spacer(),
    //     IconButton(
    //         icon: Icon(Icons.remove_circle_outline),
    //         color: Colors.red,
    //         onPressed: () {
    //           onDelete();
    //         })
    //   ],
    // ),
  }
}
