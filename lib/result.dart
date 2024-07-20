import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/color.dart';

// ignore: must_be_immutable
class Reslutpage extends StatelessWidget {
  double height;
  // double age;
  double weight;
  bool ISMALE;

  Reslutpage(
      {super.key,
      required this.height,
      required this.weight,
      required this.ISMALE});

  @override
  Widget build(BuildContext context) {
    double BMICalc = weight / pow(height / 100, 2);

    String result = '';
    switch (BMICalc) {
      case < 16:
        result = "Severe thinnes";
        break;
      case > 16 && < 25:
        result = "Normal";
        break;
      case > 25 && < 30:
        result = "OverWeight";
        break;
      case < 30:
        result = "obese";
        break;
      default:
    }

    return Scaffold(
      backgroundColor: ISMALE ? kBlueColor : kRedColor,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text(
          "RESULT PAGE ",
          style: TextStyle(fontSize: 50, color: Colors.cyanAccent),
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "BMI is ",
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
              Text(
                BMICalc.toStringAsFixed(2),
                style: TextStyle(fontSize: 70, color: Colors.white),
              ),
              Text(
                result,
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.lightGreenAccent),
                child: IconButton(
                  disabledColor: Colors.lightBlueAccent,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.refresh,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
