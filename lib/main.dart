import 'package:flutter/material.dart';
import 'package:flutter_application_4/home_page.dart';

void main() {
  runApp(BMIApp());
}

class BMIApp extends StatelessWidget {
  BMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
