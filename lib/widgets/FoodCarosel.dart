import 'package:flutter/material.dart';
import 'package:order_food/screens/DetailsPage.dart';
import 'package:order_food/models/FoodCarouselCard.dart';

class FoodCarousel extends StatefulWidget {
  final String tag = 'hello';
  final bool active;
  final FoodCard foodCard;

  FoodCarousel({@required this.foodCard, this.active});

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
        SizedBox(height: 60),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOutQuint,
          height: widget.active ? 0 : 80,
        ),
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: SizedBox(
            height: 100,
            child: Hero(
              tag: widget.tag,
              child: Image.asset(widget.foodCard.headingImage),
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
                      image: DecorationImage(
                          image: AssetImage(widget.foodCard.image)),
                      color: widget.foodCard.color,
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
