import 'package:flutter/material.dart';
import 'package:portfolio/scenarios/home/home_screen.dart';
import './utils/text_style.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(textTheme: TextStyling.whiteCupertino),
        home: HomeScreen());
  }
}
