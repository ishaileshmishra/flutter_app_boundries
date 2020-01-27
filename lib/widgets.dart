import 'package:flutter/material.dart';


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


var headerContainer = Container(
  width: double.infinity, height: 250,
  decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100)
      )),
  child: Image.asset(
    'assets/images/map.png',
  ),
);


final kTitleStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'CM Sans Serif',
  fontSize: 26.0,
  height: 1.5,
);

final kSubtitleStyle = TextStyle(
  color: Colors.white,
  fontSize: 18.0,
  height: 1.2,
);




Widget onLoading(context) {

  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Dialog(
        child: new Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            new CircularProgressIndicator(),
            new Text("Loading"),
          ],
        ),
      );
    },
  );

  Future.delayed(new Duration(seconds: 3), () {
    Navigator.pop(context);
  });
}