import 'package:flutter/material.dart';

class SnackList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: 100,
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
    );
  }
}
