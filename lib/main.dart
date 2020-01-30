import 'package:boundries/home/countries_list_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.red,
          brightness: Brightness.light,
          fontFamily: 'nunito'
      ),
      home: Countries(), //OnboardingScreen(),
    );
  }
}
