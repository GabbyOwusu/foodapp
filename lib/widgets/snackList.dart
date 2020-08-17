import 'package:flutter/material.dart';
import 'package:order_food/models/FoodCarouselModel.dart';
import 'package:order_food/providers/FoodCarouselProvider.dart';
import 'package:provider/provider.dart';

class SnackList extends StatefulWidget {
  final int index;
  final FoodCard foodCardimage;

  SnackList({@required this.index, @required this.foodCardimage});
  @override
  _SnackListState createState() => _SnackListState();
}

class _SnackListState extends State<SnackList> {
  CardProvider get provider {
    return Provider.of<CardProvider>(context);
  }

  bool active = false;
  FoodCard foodCardimage;
  Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          active = !active;
          color = provider.items[widget.index].color;
        });
      },
      child: Container(
        padding: EdgeInsets.only(top: 20, bottom: 20),
        margin: EdgeInsets.only(left: 20),
        width: 100,
        decoration: BoxDecoration(
          color: active
              ? color
              : Color.fromRGBO(235, 235, 250, 1).withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                widget.foodCardimage.snacks[widget.index],
                width: 50,
              ),
              Spacer(),
              Text(
                'Breakfast',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SanFransisco',
                    color: active ? Colors.white : Colors.black,
                    letterSpacing: 1),
              )
            ],
          ),
        ),
      ),
    );
  }
}
