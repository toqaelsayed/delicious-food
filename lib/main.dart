import 'package:flutter/material.dart';
import 'package:grad/pages/homeScreen.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter LoginPage",

      home: HomeScreen(),
    );
  }
}
