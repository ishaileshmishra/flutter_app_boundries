import 'package:boundries/widgets.dart';
import 'package:flutter/material.dart';

class _CountriesState extends State<Countries> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            sliverAppBar,
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                  margin: EdgeInsets.all(6),
                  decoration: bocDecoration,
                  child: (listTile),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  //Something to add



}

class Countries extends StatefulWidget {
  Countries({Key key}) : super(key: key);

  @override
  _CountriesState createState() => _CountriesState();
}
