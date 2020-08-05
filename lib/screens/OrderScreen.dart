import 'package:flutter/material.dart';
import 'package:order_food/widgets/oderCard.dart';

class OderScreen extends StatefulWidget {
  @override
  _OderScreenState createState() => _OderScreenState();
}

class _OderScreenState extends State<OderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            }),
        elevation: 0,
        title: Text(
          'MacDonalds',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your order',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SanFransisco'),
              ),
              OrderCard(),
              SizedBox(
                height: 10,
              ),
              Text(
                'You might also like',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SanFransisco'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
