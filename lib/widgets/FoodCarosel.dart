import 'package:flutter/material.dart';
import 'package:order_food/screens/DetailsPage.dart';
import 'package:order_food/models/FoodCarouselCard.dart';

class FoodCarousel extends StatefulWidget {
  final bool active;

  final FoodCard foodCard;

  FoodCarousel({
    @required this.foodCard,
    this.active,
  });

  @override
  _FoodCarouselState createState() => _FoodCarouselState();
}

class _FoodCarouselState extends State<FoodCarousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SizedBox(height: 60),
          AnimatedContainer(
            duration: Duration(milliseconds: 50),
            curve: Curves.easeInOutQuint,
            height: widget.active ? 0 : 100,
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: SizedBox(
              height: 100,
              child: Image.asset(widget.foodCard.headingImage),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 30),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Details()));
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
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(widget.foodCard.image)),
                        color: widget.foodCard.color,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      widget.foodCard.title,
                      style: TextStyle(
                        fontFamily: 'SanFransisco',
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 18,
                        ),
                        Text(
                          '4.8',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey.withOpacity(0.5)),
                        ),
                        Text(
                          'Burgers American',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey.withOpacity(0.5)),
                        ),
                        Text(
                          'Dollars',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey.withOpacity(0.5)),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Text(
                      '10 - 15 min',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
