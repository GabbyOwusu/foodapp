import "package:flutter/material.dart";
import 'package:order_food/widgets/foodgrid.dart';
import 'package:order_food/widgets/snackList.dart';

class Details extends StatefulWidget {
  final String tag = 'hello';
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 250,
              actions: <Widget>[
                IconButton(icon: Icon(Icons.search), onPressed: () {})
              ],
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: Image.asset('images/food.png')),
              ),
              backgroundColor: Colors.red,
              leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Column(
                children: <Widget>[
                  Container(
                    height: 10000,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'MacDonald\'s',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              fontFamily: 'SanFransisco',
                              letterSpacing: 0.5),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
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
                                    color: Colors.grey.withOpacity(0.8)),
                              ),
                              Text(
                                'Burgers American',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey.withOpacity(0.8)),
                              ),
                              Text(
                                'Dollars',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey.withOpacity(0.8)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 30,
                          width: 130,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(248, 242, 255, 1)
                                  .withOpacity(0.7),
                              borderRadius: BorderRadius.circular(30)),
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
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index) => SnackList(),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, top: 30),
                            child: Text(
                              'Breakfast Value Meals',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GridView.builder(
                            primary: false,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2),
                            itemCount: 10,
                            itemBuilder: (context, index) => FoodGrid(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ]))
          ],
        ),
      ),
    );
  }
}
