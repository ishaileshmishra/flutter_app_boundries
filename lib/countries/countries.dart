import 'package:boundries/widgets.dart';
import 'package:flutter/material.dart';

class _CountriesState extends State<Countries> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            headerContainer,

            Expanded(child: Container(
              child: ListView.builder(
                  itemCount: 14, itemBuilder: (context, index){
                return Card(elevation: 2.0,
                  child: Container(
                     margin: EdgeInsets.all(10.0),
                    child: listTile,
                  ),
                );
              }),
            ))

          ],

        )
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
