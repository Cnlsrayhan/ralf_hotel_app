import 'package:flutter/material.dart';
import 'package:ralf_hotel_app/bottom_nav.dart';
import 'package:ralf_hotel_app/pages/detail_page.dart';
import 'package:ralf_hotel_app/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomScreen(),
    );
  }
}
