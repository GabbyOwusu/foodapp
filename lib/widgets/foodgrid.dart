import 'package:flutter/material.dart';

class FoodGrid extends StatelessWidget {
  const FoodGrid({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        primary: false,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(left: 20),
          width: 100,
          height: 120,
          decoration: BoxDecoration(
              color: Color.fromRGBO(248, 242, 255, 1).withOpacity(0.7),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/chickenbucket.png',
                  width: 50,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Breakfast',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'SanFransisco',
                      letterSpacing: 1),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
