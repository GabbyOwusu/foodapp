import 'package:flutter/material.dart';

class FoodCarousel extends StatefulWidget {
  final bool active;
  FoodCarousel({this.active});
  @override
  _FoodCarouselState createState() => _FoodCarouselState();
}

class _FoodCarouselState extends State<FoodCarousel> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOutQuint,
          height: widget.active ? 0 : 100,
        ),
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: CircleAvatar(
            radius: 50,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 30),
          child: Container(
            // curve: Curves.easeInOutQuint,
            // duration: Duration(microseconds: 500),
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
      ],
    );
  }
}
