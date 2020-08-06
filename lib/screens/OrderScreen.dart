import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order_food/screens/Done.dart';
import 'package:order_food/widgets/oderCard.dart';

class OderScreen extends StatefulWidget {
  @override
  _OderScreenState createState() => _OderScreenState();
}

class _OderScreenState extends State<OderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                height: 20,
              ),
              Text(
                'You might also like',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SanFransisco'),
              ),
              SizedBox(
                height: 20,
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
              SizedBox(height: 30),
              Text(
                'Total',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SanFransisco'),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Subtotal',
                        style: TextStyle(
                            fontFamily: 'SanFransisco',
                            fontSize: 17,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Delivery fee(free)',
                        style: TextStyle(
                            fontFamily: 'SanFransisco',
                            fontSize: 17,
                            color: Colors.lightGreen),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'AED 24',
                        style: TextStyle(
                            fontFamily: 'SanFransisco',
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'AED 0',
                        style: TextStyle(
                            fontFamily: 'SanFransisco',
                            fontSize: 17,
                            color: Colors.lightGreen),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 10),
              Divider(
                endIndent: 1,
                indent: 1,
                color: Colors.grey[200],
                thickness: 1,
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'SanFransisco'),
                  ),
                  Spacer(),
                  Text(
                    'AED 24',
                    style: TextStyle(
                        fontFamily: 'SanFransisco',
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Pay with',
                style: TextStyle(
                    fontFamily: 'SanFransisco',
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Image.asset(
                      'images/applepay.png',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Apple Pay',
                    style: TextStyle(
                      fontFamily: 'SanFransisco',
                      fontSize: 17,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward)
                ],
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Done()),
          );
          //   PageRouteBuilder(
          //     transitionDuration: Duration(seconds: 1),
          //     transitionsBuilder: (context, animation, secondAnimation, child) {
          //       animation = CurvedAnimation(
          //           parent: animation,
          //           curve: Interval(0.500, 1.000, curve: Curves.easeIn));
          //       return ScaleTransition(
          //         scale: animation,
          //         child: child,
          //         alignment: Alignment.center,
          //       );
          //     },
          //     pageBuilder: (context, animation, secondAnimation) => Done(),
          //   ),
          // );
        },
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
          height: 60,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              'Pay AED 24',
              style: TextStyle(
                fontFamily: 'SanFransisco',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
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
