import 'dart:convert';
import 'package:boundries/widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

_getStream() async {

  var response = await http.get('https://restcountries.eu/rest/v2/all');
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
  Iterable countries = json.decode(response.body);
  for(var country in countries){
    debugPrint(country);
  }
}


class _CountriesState extends State<Countries> {


  initState() {
    super.initState();
    _getStream();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          headerContainer,
          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2.0,
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      //child:

                      //listTile,
                    ),
                  );
                }),
          ))
        ],
      )),
    );
  }

  //Something to add

}

class Countries extends StatefulWidget {
  Countries({Key key}) : super(key: key);

  @override
  _CountriesState createState() => _CountriesState();
}
