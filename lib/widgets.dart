import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

var textLarge = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 16,
  wordSpacing: 1.2,
);

var textMedium = TextStyle(
  fontWeight: FontWeight.normal,
  fontSize: 14,
  wordSpacing: 1.2,
);

var textSmall = TextStyle(
  fontWeight: FontWeight.normal,
  fontSize: 11,
  wordSpacing: 1.2,
);

var bocDecoration = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(40)),
    border: Border.all(color: Colors.amber, width: 2));

var headerContainer = Container(
  width: double.infinity,
  height: 250,
  decoration: BoxDecoration(
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100))),
  child: Image.asset(
    'assets/images/map.png',
  ),
);

final kTitleStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'CM Sans Serif',
  fontSize: 20.0,
  height: 1.5,
);

final kSubtitleStyle = TextStyle(
  color: Colors.white,
  fontSize: 15.0,
  height: 1.2,
);

Widget networkSvg(String flag) {
  return SvgPicture.network(
    flag,
    fit: BoxFit.cover,
    allowDrawingOutsideViewBox: true,
    placeholderBuilder: (BuildContext context) => Container(
        padding: const EdgeInsets.all(30.0),
        child: const CircularProgressIndicator()),
  );
}

Widget flipCard(String front, String back) {
  return FlipCard(
    direction: FlipDirection.HORIZONTAL, // default
    front: Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(4))),
      child: Center(
        child: Text(front, style: textLarge),
      ),
    ),
    back: Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.all(Radius.circular(4))),
      child: Center(
          child: Text(back, style: textLarge)),
    ),
  );
}
