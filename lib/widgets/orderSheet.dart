import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(
        milliseconds: 400,
      ),
      height: 680,
      decoration: BoxDecoration(
        color: Colors.white, //Colors.grey[100],
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
            child: Image.asset('images/burger.png'),
          ),
          SizedBox(height: 20),
          Text(
            'Big Mac Burger',
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
              itemBuilder: (context, index) => snackSuggestions(),
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
                  border: Border.all(color: Colors.grey[400], width: 2),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    IconButton(
                        icon: (Icon(Icons.add)),
                        color: Colors.grey[400],
                        onPressed: () {}),
                    Text('1'),
                    IconButton(
                        icon: (Icon(Icons.add)),
                        color: Colors.grey[400],
                        onPressed: () {}),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
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

Widget snackSuggestions() {
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
          child: Image.asset('images/burger.png'),
        ),
        Text('Big Bun')
      ],
    ),
  );
}
