import 'dart:convert';
import 'package:boundries/API.dart';
import 'package:boundries/countries/country.dart';
import 'package:boundries/details/DetailPage.dart';
import 'package:boundries/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


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
        debugPrint('${allCountries.toList()}');
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
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
      child: ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailPage(country = country)));
          },
          title: Text(country.name, style: textLarge),
          leading: Container(
              height: double.infinity,
              width: 55.0,
              child: Hero(
                tag: country.flag,
                child: ClipRRect(
                    borderRadius: new BorderRadius.circular(30.0),
                    child: networkSvg(country.flag)),
              )),
          subtitle: Text(country.capital, style: textMedium),
          trailing: Text(country.region, style: textSmall)),
    );
  }
}
