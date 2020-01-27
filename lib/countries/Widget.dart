import 'package:boundries/API.dart';
import 'package:boundries/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



Widget defaultTabController = DefaultTabController(
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
          Container(
            child: Center(
              child: Text('Asia')
            ),
          ),
          Container(
            child: Center(
              child: Text('Tab 2'),
            ),
          ),
          Container(
            child: Center(
              child: Text('Tab 3'),
            ),
          ),
          Container(
            child: Center(
              child: Text('Tab 4'),
            ),
          ),
          Container(
            child: Center(
              child: Text('Tab 5'),
            ),
          ),

        ],
      )),
);



_renderCountries(allCountries){

  ListView.builder(
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