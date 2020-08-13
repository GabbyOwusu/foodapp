import 'package:flutter/material.dart';
import 'package:order_food/models/FoodCarouselCard.dart';
import 'package:order_food/widgets/OrderSheet.dart';

class FoodGrid extends StatefulWidget {
  final int index;
  final FoodCard gridMenu;

  FoodGrid({@required this.index, this.gridMenu});

  @override
  _FoodGridState createState() => _FoodGridState();
}

class _FoodGridState extends State<FoodGrid> {
  bool active = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          active = !active;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        decoration: BoxDecoration(
          color: active
              ? Colors.red
              : Color.fromRGBO(235, 235, 250, 1).withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: <Widget>[
              Center(
                child: Image.asset(
                  widget.gridMenu.menu[widget.index],
                  width: 100,
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Big Breakfast meal',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'SanFransisco',
                      color: active ? Colors.white : Colors.black,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                child: Row(
                  children: <Widget>[
                    Text(
                      'AED',
                      style: TextStyle(
                        color: active ? Colors.white : Colors.black,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        showBottomSheet(
                          elevation: 20,
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) => OrderSheet(
                            burgerImage: widget.gridMenu,
                            index: widget.index,
                          ),
                        );
                      },
                      child: Container(
                        height: 30,
                        width: 30,
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
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
