import 'package:boundries/countries/country.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {

  DetailPage(this.country);

  final Country country;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.country.name),
      ),
      body: Container(
        child: Center(
          child: Text('Details Page: ${widget.country.capital}'),
        ),
      ),
    );
  }
}
