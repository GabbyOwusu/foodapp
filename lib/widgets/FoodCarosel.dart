import 'package:flutter/material.dart';
import 'package:order_food/DetailsPage.dart';

class FoodCarousel extends StatefulWidget {
  final bool active;
  final String image;

  FoodCarousel({this.active, this.image});

  @override
  _FoodCarouselState createState() => _FoodCarouselState();
}

class _FoodCarouselState extends State<FoodCarousel> {
  // List<String> images = [
  //   'kfc.png',
  //   'starbucks.png',
  //   'subway.png',
  // ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        AnimatedContainer(
          duration: Duration(milliseconds: 200),
          curve: Curves.easeInOutQuint,
          height: widget.active ? 0 : 80,
        ),
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: SizedBox(
            height: 100,
            child: Image(
              image: AssetImage(widget.image),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 30),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Details()));
            },
            child: Container(
              padding: EdgeInsets.all(20),
              height: 800,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
