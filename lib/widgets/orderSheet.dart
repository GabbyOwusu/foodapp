import 'package:flutter/material.dart';
import 'package:order_food/models/FoodCarouselModel.dart';
import 'package:order_food/models/Order.dart';
import 'package:order_food/providers/CartProvider.dart';
import 'package:provider/provider.dart';

class OrderSheet extends StatefulWidget {
  final int index;
  final FoodCard burgerImage;
  OrderSheet({this.burgerImage, this.index});

  @override
  _OrderSheetState createState() => _OrderSheetState();
}

class _OrderSheetState extends State<OrderSheet> {
  bool addtoCart = false;
  Order order;

  CartProvider get provider {
    return Provider.of<CartProvider>(context, listen: false);
  }

  @override
  void initState() {
    order = Order(food: widget.burgerImage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(
        milliseconds: 400,
      ),
      height: 680,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 6,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey[300].withOpacity(0.9),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 200,
            width: 200,
            child: Image.asset(widget.burgerImage.menu[widget.index]),
          ),
          SizedBox(height: 20),
          Text(
            widget.burgerImage.foodName[widget.index],
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'SanFransisco',
              height: 1.3,
              fontSize: 25,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'AED 24',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontFamily: 'SanFransisco',
              height: 1.3,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'A big and tasty Halal beef patty smothered in \nour one of a kind Big Tasty Sauce and 3\n slices of emmental cheese...',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontFamily: 'SanFransisco',
              height: 1.3,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 150,
            child: ListView.builder(
              itemBuilder: (context, index) => snackSuggestions(
                  index: index, suggestions: widget.burgerImage),
              itemCount: 4,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromRGBO(235, 235, 250, 1).withOpacity(1),
                      width: 3),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    IconButton(
                        icon: (Icon(Icons.remove)),
                        color: Colors.grey[400],
                        onPressed: () {
                          setState(() {
                            if (order.quantity <= 1) return;
                            order = Order(
                              food: order.food,
                              quantity: order.quantity - 1,
                            );
                          });
                        }),
                    Text('${order.quantity}'),
                    IconButton(
                        icon: (Icon(Icons.add)),
                        color: Colors.grey[400],
                        onPressed: () {
                          setState(() {
                            if (order.quantity > 4) return;
                            order = Order(
                              food: order.food,
                              quantity: order.quantity + 1,
                            );
                          });
                        }),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    addtoCart = true;
                    provider.addOrder(order);
                  });
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(right: 20, top: 10),
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      'Add to cart',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SanFransisco',
                        height: 1.3,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget snackSuggestions({FoodCard suggestions, int index}) {
  List<String> titles = [
    'Side dish 1',
    'Extra',
    'Appetizer',
    'Dessert',
    'Side dish 5',
    'Side dish 6',
  ];
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          height: 100,
          width: 90,
          decoration: BoxDecoration(
              color: Colors.grey[100].withOpacity(0.9), shape: BoxShape.circle),
          child: SizedBox(
            height: 20,
            width: 20,
            child: Image.asset(
              suggestions.snacks[index],
            ),
          ),
        ),
        Text(titles[index])
      ],
    ),
  );
}
