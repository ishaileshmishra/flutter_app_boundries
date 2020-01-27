import 'dart:convert';
import 'package:boundries/API.dart';
import 'package:boundries/countries/country.dart';
import 'package:boundries/details/DetailPage.dart';
import 'package:boundries/widgets.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key, this.region}) : super(key: key);

  final String region;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  List<Country> allCountries = List<Country>();

  _countriesByRegion() {
    allCountries.clear();
    API.getCountryByRegion(widget.region).then((response) {
      if (!mounted) return;
      setState(() {
        Iterable list = json.decode(response.body);
        allCountries = list.map((model) => Country.fromJson(model)).toList();
        //debugPrint(allCountries.toString());
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _countriesByRegion();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: allCountries.length,
          itemBuilder: (context, index) {
            return viewCard(allCountries[index]);
          }),
    );
  }

  Widget viewCard(Country country) {
    return Card(
      elevation: 2.0,
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPage(country = country)));
            },
            contentPadding: EdgeInsets.all(5),
            title: Text(country.name, style: textLarge),
            leading: Icon(Icons.flag, size: 40),
            subtitle: Text(country.capital, style: textMedium),
            trailing: Text(country.region, style: textSmall)),
      ),
    );
  }
}
