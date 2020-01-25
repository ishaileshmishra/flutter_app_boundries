import 'dart:convert';
import 'package:boundries/API.dart';
import 'package:boundries/countries/country.dart';
import 'package:boundries/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

class _CountriesState extends State<Countries> {
  var allCountries = new List<Country>();

  _getStream() async {
    allCountries.clear();
    var response = await http.get('https://restcountries.eu/rest/v2/all');
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    Iterable countries = json.decode(response.body);
    for (var country in countries) {
      debugPrint(country);
      allCountries.add(country);
    }

    return allCountries;
  }

  _getCountries() {
    API.getALLCountrues().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        allCountries = list.map((model) => Country.fromJson(model)).toList();
      });
    });
  }

  initState() {
    super.initState();
    _getCountries();
  }

  dispose() {
    super.dispose();
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
                itemCount: allCountries.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2.0,
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      child: ListTile(
                          dense: true,
                          onTap: () =>
                              print('Tapped ${allCountries[index].name}'),
                          contentPadding: EdgeInsets.all(5),
                          title: Text(
                            allCountries[index].name,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          leading: Container(
                            child: SvgPicture.network
                              (
                                allCountries[index].flag,
                              height: double.infinity,
                              width: 80,
                              fit: BoxFit.cover,
                            )),
                          subtitle: Text(allCountries[index].subregion),
                          trailing: Text(allCountries[index].region)),
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
