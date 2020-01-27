import 'dart:convert';
import 'package:boundries/API.dart';
import 'package:boundries/countries/country.dart';
import 'package:boundries/widgets.dart';
import 'package:flutter/material.dart';

class _CountriesState extends State<Countries> {

  var allCountries = new List<Country>();

  _getCountries() {
    allCountries.clear();
    API.getALLCountries().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        allCountries = list.map((model) => Country.fromJson(model)).toList();
      });
    });
  }


  _countriesByRegion(region) {
    allCountries.clear();
    API.getCountryByRegion(region).then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        allCountries = list.map((model) => Country.fromJson(model)).toList();
      });
    });
  }


  Widget _renderCountries(region){

    _countriesByRegion(region);

    return ListView.builder(
        itemCount: allCountries.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2.0,
            child: Container(
              margin: EdgeInsets.all(10.0),
              child: ListTile(
                  onTap: () => print('Tapped ${allCountries[index].name}'),
                  contentPadding: EdgeInsets.all(5),
                  title: Text(allCountries[index].name, style: textLarge),
                  leading: Icon(Icons.flag, size: 40),
                  subtitle: Text(allCountries[index].capital, style: textMedium),
                  trailing: Text(allCountries[index].region, style: textSmall)),
            ),
          );
        });

  }



  initState() {
    super.initState();
    //_getCountries();
    //debugPrint('all countries: ${allCountries.length}');
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

              child: DefaultTabController(
                length: 5,
                child: Scaffold(
                    appBar: AppBar(
                      bottom: PreferredSize(
                          child: TabBar(
                              isScrollable: true,
                              unselectedLabelColor: Colors.white.withOpacity(0.3),
                              indicatorColor: Colors.white,
                              tabs: [
                                Tab(child: Text('Asia', style: textMedium),
                                ),
                                Tab(
                                  child: Text('Africa', style: textMedium),
                                ),
                                Tab(
                                  child: Text('Americas', style: textMedium),
                                ),
                                Tab(
                                  child: Text('Europe', style: textMedium),
                                ),
                                Tab(
                                  child: Text('Oceania', style: textMedium),
                                )
                              ]),
                          preferredSize: Size.fromHeight(20.0)),

                    ),
                    body: TabBarView(
                      children: <Widget>[
                        Container(child: _renderCountries('asia')),
                        Container(child: _renderCountries('asia')),
                        Container(child: _renderCountries('asia')),
                        Container(child: _renderCountries('asia')),
                        Container(child: _renderCountries('asia')),
                      ],
                    )),
              ),


          )
        ],
      )),
    );
  }





}

class Countries extends StatefulWidget {
  Countries({Key key}) : super(key: key);

  @override
  _CountriesState createState() => _CountriesState();
}
