import 'package:flutter/material.dart';

class OrderCard extends StatefulWidget {
  const OrderCard({
    Key key,
  }) : super(key: key);

  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'images/burger.png',
            width: 60,
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Big Mac Burger',
                  style: TextStyle(
                    fontFamily: 'SanFransisco',
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'AED24',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          //Spacer(),
          Container(
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
        ],
      ),
    );
  }
}
