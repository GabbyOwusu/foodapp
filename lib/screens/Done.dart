import 'package:flutter/material.dart';
import 'package:order_food/models/FoodCarouselModel.dart';
import 'package:order_food/screens/Home.dart';

class Done extends StatefulWidget {
  @override
  _DoneState createState() => _DoneState();
}

class _DoneState extends State<Done> {
  double endSize = 2.0;
  bool ended = false;
  FoodCard food = FoodCard();

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        endSize = 500;
        ended = !ended;
      });
      Future.delayed(Duration(milliseconds: 1600), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.red,
      child: Container(
        color: Colors.red,
        alignment: Alignment.center,
        child: TweenAnimationBuilder(
          curve: Curves.bounceInOut,
          tween: Tween<double>(begin: 2, end: endSize),
          duration: Duration(milliseconds: 1500),
          builder: (context, size, child) {
            return Transform.scale(scale: 0.9, child: child);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedSwitcher(
                transitionBuilder: (child, animation) =>
                    ScaleTransition(scale: animation, child: child),
                switchInCurve: Curves.bounceIn,
                duration: Duration(milliseconds: 300),
                child: ended
                    ? AnimatedContainer(
                        height: ended ? 150 : 100,
                        width: ended ? 150 : 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        duration: Duration(milliseconds: 300),
                        child: Center(
                          child: Icon(
                            Icons.done,
                            color: Colors.red,
                            size: 70,
                          ),
                        ),
                      )
                    : Container(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 160,
                              width: 160,
                              child: CircularProgressIndicator(
                                backgroundColor: Colors.white.withOpacity(0.5),
                                valueColor:
                                    AlwaysStoppedAnimation(Colors.white),
                                strokeWidth: 7,
                              ),
                            ),
                            Positioned(
                              top: 36,
                              left: 35,
                              child: Image.asset(
                                'images/faceid.png',
                                width: 90,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
              ),
              SizedBox(height: 30),
              Text(
                ended ? 'Order placed succesfully' : 'Sit tight...',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontFamily: 'SanFransisco'),
              ),
              SizedBox(height: 18),
              Text(
                ended
                    ? 'You will recieve your tasty food in \n10 -15 mins'
                    : 'We\'re placing your order',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: 'SanFransisco'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
