import 'package:boundries/countries/country.dart';
import 'package:boundries/widgets.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {

  final Country country;

  DetailPage(this.country);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About ${widget.country.name}'),
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(CupertinoIcons.clear, size: 40),
        ),
      ),
      //body: SingleChildScrollView(
      body: Column(
        children: <Widget>[
          SizedBox(height: 10),

          Hero(
            tag: widget.country.flag,
            child: Container(
              height: 170,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                  borderRadius: new BorderRadius.circular(10.0),
                  child: networkSvg(widget.country.flag)),
            ),
          ),

          //SizedBox(height: 10),

          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[

                flipCard('Top Level Domain', '${widget.country.topLevelDomain}'),
                flipCard('Top Level Domain', '${widget.country.topLevelDomain}'),
                flipCard('Top Level Domain', '${widget.country.topLevelDomain}'),
                flipCard('Top Level Domain', '${widget.country.topLevelDomain}'),
                flipCard('Top Level Domain', '${widget.country.topLevelDomain}'),
                flipCard('Top Level Domain', '${widget.country.topLevelDomain}'),
                flipCard('Top Level Domain', '${widget.country.topLevelDomain}'),
                flipCard('Top Level Domain', '${widget.country.topLevelDomain}'),
                flipCard('Top Level Domain', '${widget.country.topLevelDomain}'),
                flipCard('Top Level Domain', '${widget.country.topLevelDomain}'),

              ],
            ),
          ),
        ],
      ),
      //),
    );
  }
}
