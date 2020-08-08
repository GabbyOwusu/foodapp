import 'package:flutter/material.dart';
import 'package:order_food/providers/FoodCarouselProvider.dart';
import 'package:order_food/widgets/FoodCarosel.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController controller = PageController(
    initialPage: 2,
    viewportFraction: 0.86,
  );
  int currentPage;

  Color color;

  void initState() {
    super.initState();

    controller.addListener(() {
      int next = controller.page.round();
      if (currentPage != next) {
        setState(() {
          currentPage = next;
        });
      }
    });
  }

  CardProvider get provider {
    return Provider.of<CardProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Center(
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                    color: color,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        height: 800,
                        child: PageView.builder(
                            onPageChanged: (value) {
                              setState(() {
                                color = provider.items[value].color;
                              });
                            },
                            physics: BouncingScrollPhysics(),
                            pageSnapping: true,
                            controller: controller,
                            itemCount: provider.items.length,
                            //ignore: missing_return
                            itemBuilder: (context, index) {
                              if (index == currentPage) {
                                bool active = index == currentPage;
                                return FoodCarousel(
                                  foodCard: provider.items[index],
                                  active: active,
                                );
                              } else if (provider.items.length >= index) {
                                return FoodCarousel(
                                  foodCard: provider.items[index],
                                  active: false,
                                );
                              }
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          color: Colors.white.withOpacity(0.5), width: 2)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'ASAP',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        IconButton(
                            icon: Icon(Icons.arrow_forward),
                            color: Colors.white,
                            iconSize: 20,
                            onPressed: () {}),
                        Text(
                          'Work',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Container(
                    height: 50,
                    width: 220,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                        child: Text(
                      'Order from here',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    )),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
