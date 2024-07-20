import 'package:flutter/material.dart';
import 'package:flutter_application_4/color.dart';
import 'package:flutter_application_4/result.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => __HomePageState();
}

class __HomePageState extends State<HomePage> {
  int age = 13;

  int height = 150;

  int Weight = 50;

  bool ISMALE = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "BMI",
            style: TextStyle(fontSize: 50, color: kBlueColor),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => setState(() {
                          ISMALE = true;
                          print(true);
                        }),
                        child: Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: ISMALE ? 5 : 0, color: kRedColor),
                                color: kBlueColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.male,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                  Text(
                                    " MALE ",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  )
                                ],
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    // first container for male

                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            ISMALE = false;
                          });
                          print(false);
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: ISMALE ? 0 : 5, color: kRedColor),
                              color: kBlueColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.female,
                                  color: Colors.white,
                                  size: 50,
                                ),
                                Text(
                                  " FEMALE  ",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                )
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // second container for female

              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: kBlueColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              " Height",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            Text(
                              "$height",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Slider(
                                value: height.toDouble(),
                                max: 200,
                                activeColor: kRedColor,
                                min: 150,
                                onChanged: (Value) {
                                  setState(() {
                                    height = Value.toInt();
                                  });
                                })
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // thrid container for height and silder

              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: kBlueColor),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              " Age",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            Text(
                              "$age",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: kRedColor),
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      color: Colors.lightBlueAccent,
                                      icon: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      )),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: kRedColor),
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      color: Colors.lightBlueAccent,
                                      icon: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            ),
                          ]),
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    // age
                    //
                    //

                    Expanded(
                        child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: kBlueColor),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              " Weight",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            Text(
                              "$Weight",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            // bcg
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: kRedColor),
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          Weight++;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      )),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: kRedColor),
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          Weight--;
                                        });
                                      },
                                      color: Colors.lightBlueAccent,
                                      icon: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            ),
                          ]),
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // weight

              //
              //
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(15),
                              backgroundColor: kRedColor,
                              foregroundColor: Colors.white),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Reslutpage(
                                    height: height.toDouble(),
                                    weight: Weight.toDouble(),
                                    ISMALE: ISMALE,
                                  ),
                                ));
                          },
                          child: Text(
                            " calculate ",
                            selectionColor: Colors.black,
                            style: TextStyle(fontSize: 25),
                          ))),
                ],
              ),
            ],
          ),
        ));
  }
}
