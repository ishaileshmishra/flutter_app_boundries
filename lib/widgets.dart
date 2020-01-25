import 'package:flutter/material.dart';

var sliverAppBar = SliverAppBar(
  expandedHeight: 250,
  floating: true, pinned: false,
  flexibleSpace: FlexibleSpaceBar(
      title: Container(
        child: CircleAvatar(
          backgroundColor: Colors.yellowAccent,
          radius: 20,
    ),
  )),
);

var textLarge = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 18,
  wordSpacing: 1.2,
);


var textMedium = TextStyle(
  fontWeight: FontWeight.normal,
  fontSize: 15,
  wordSpacing: 1.2,
);


var textSmall = TextStyle(
  fontWeight: FontWeight.normal,
  fontSize: 12,
  wordSpacing: 1.2,
);


var bocDecoration = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(40)),
    border: Border.all(color: Colors.amber, width: 2));

_slideToDetail() {}


var listTile = ListTile(
    dense: true,
    onTap: () => _slideToDetail(),
    contentPadding: EdgeInsets.all(5),
    title: Text('India, Republic Of India',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
    leading: Container(
      child: Icon(Icons.equalizer),
    ),
    subtitle: Text('South Asia'),
    trailing: Text('Asia'));



var headerContainer = Container(
    width: double.infinity, height: 250,
  decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100))),
  child: Image.asset('assets/img/map.png', color: Colors.purple,),
);