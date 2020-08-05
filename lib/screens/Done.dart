import 'package:flutter/material.dart';

class Done extends StatefulWidget {
  @override
  _DoneState createState() => _DoneState();
}

class _DoneState extends State<Done> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Stack(
                  children: [
                    SizedBox(
                      height: 160,
                      width: 160,
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.white.withOpacity(0.5),
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                        strokeWidth: 6,
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 30,
                      child: Image.asset(
                        'images/faceid.png',
                        width: 100,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Sit tight...',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontFamily: 'SanFransisco'),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                'We\'re placing your order',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: 'SanFransisco'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
