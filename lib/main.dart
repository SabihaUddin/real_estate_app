import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:real_estate/pages/home_page.dart';
import 'package:real_estate/utilis/consant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double screenWidth=window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: COLOR_White,textTheme: screenWidth<500?Text_Theme_Smaller:Text_Default_Theme,fontFamily: "Montserrat"
      ),
      home: HomePage(),
    );
  }
}

