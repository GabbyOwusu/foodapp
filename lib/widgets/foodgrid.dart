import 'package:flutter/material.dart';

class FoodGrid extends StatefulWidget {
  final int index;
  FoodGrid({@required this.index});

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
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        width: 100,
        height: 120,
        decoration: BoxDecoration(
            color: active
                ? Colors.red
                : Color.fromRGBO(248, 242, 255, 1).withOpacity(0.7),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: <Widget>[
              Center(
                child: Image.asset(
                  'images/chickenbucket.png',
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
                        letterSpacing: 1),
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
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(235, 235, 250, 1),
                      ),
                      child: Center(
                          child: Icon(
                        Icons.add,
                        color: Colors.black26,
                        size: 15,
                      )),
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
