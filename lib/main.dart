import 'package:flutter/material.dart';
import 'package:web_d/Hom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ImAditya",
      home: Hom(),
      debugShowCheckedModeBanner: false,
    );
  }
}
