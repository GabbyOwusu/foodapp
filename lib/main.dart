import 'package:flutter/material.dart';
import 'package:order_food/providers/CartProvider.dart';
import 'package:order_food/screens/Home.dart';
import 'package:order_food/providers/FoodCarouselProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CardProvider>(create: (_) => CardProvider()),
        ChangeNotifierProvider<CartProvider>(create: (_) => CartProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Order Food',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}
