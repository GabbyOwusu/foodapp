import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order_food/models/FoodCarouselCard.dart';
import 'package:order_food/providers/FoodCarouselProvider.dart';
import 'package:order_food/screens/OrderScreen.dart';
import 'package:order_food/widgets/foodgrid.dart';
import 'package:order_food/widgets/snackList.dart';
import 'package:provider/provider.dart';

class Details extends StatefulWidget {
  final FoodCard foodcard;
  Details({@required this.foodcard});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  CardProvider get provider {
    return Provider.of<CardProvider>(context);
  }

  bool active = false;
  bool adToCart = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.foodcard.color,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 250,
                actions: <Widget>[
                  IconButton(icon: Icon(Icons.search), onPressed: () {}),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: SafeArea(
                        child: Image.asset(widget.foodcard.image, width: 200)),
                  ),
                ),
                backgroundColor: Colors.transparent,
                leading: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          widget.foodcard.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              fontFamily: 'SanFransisco',
                              letterSpacing: 0.5),
                        ),
                        SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.star, color: Colors.yellow, size: 18),
                              Text(
                                '4.8',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey.withOpacity(0.8),
                                ),
                              ),
                              Text(
                                'Burgers American',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey.withOpacity(0.8),
                                ),
                              ),
                              Text(
                                'Dollars',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey.withOpacity(0.8),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30),
                        Container(
                          height: 30,
                          width: 130,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(235, 235, 250, 1)
                                .withOpacity(0.5),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              '10 - 15 min',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 50),
                          child: Container(
                            height: 120,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 6,
                              itemBuilder: (context, index) => SnackList(
                                  index: index, foodCardimage: widget.foodcard),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, top: 30),
                            child: Text(
                              'Breakfast Value Meals',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: GridView.builder(
                              primary: false,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 10,
                                      crossAxisSpacing: 10),
                              itemCount: widget.foodcard.menu.length,
                              itemBuilder: (context, index) {
                                return FoodGrid(
                                  index: index,
                                  gridMenu: widget.foodcard,
                                );
                              }),
                        ),
                        SizedBox(height: 100),
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 80,
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(248, 242, 255, 1).withOpacity(1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'AED24',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OderScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          'View cart',
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
              ),
            ),
          )
        ],
      ),
    );
  }
}
