import "package:flutter/material.dart";

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
              expandedHeight: 200,
              actions: <Widget>[
                IconButton(icon: Icon(Icons.search), onPressed: () {})
              ],
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: CircleAvatar(
                    radius: 50,
                  ),
                ),
              ),
              backgroundColor: Colors.red,
              leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
