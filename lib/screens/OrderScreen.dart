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
      //backgroundColor: Colors.grey[100].withOpacity(0.3),
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
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'SanFransisco',
              fontWeight: FontWeight.bold),
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
              SingleChildScrollView(
                primary: false,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    item(
                      title: 'Coca-Cola Zero',
                      image: 'images/burger.png',
                      text: 'AED 24',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    item(
                      title: 'Coca-Cola Zero',
                      image: 'images/burger.png',
                      text: 'AED 24',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget item({String title, String text, String image}) {
  return Container(
    padding: EdgeInsets.only(left: 10),
    width: 270,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    margin: EdgeInsets.only(
      top: 20,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          image,
          width: 50,
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'SanFransisco',
                  fontSize: 17,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: 30,
            width: 30,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                width: 2,
                color: Color.fromRGBO(235, 235, 250, 1),
              ),
            ),
            child: Center(
                child: Icon(
              Icons.add,
              color: Colors.black26,
              size: 15,
            )),
          ),
        ),
      ],
    ),
  );
}
