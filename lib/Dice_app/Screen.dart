import 'dart:math';

import 'package:flutter/material.dart';

class Dice_app extends StatefulWidget {
  const Dice_app({Key? key}) : super(key: key);

  @override
  State<Dice_app> createState() => _Dice_appState();
}
class _Dice_appState extends State<Dice_app> {
  List im = [
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/4.png",
    "assets/images/5.png",
    "assets/images/6.png",
  ];
  int sum=0;
  int i=0;
  int j=0;
  int a=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "SUM IS",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          color: Colors.white
                      ),
                    ),
                    Text(
                      "$sum",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children:[ Padding(
                padding: EdgeInsets.only(left: 20),
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                      AssetImage('${im[i]}'),
                      fit: BoxFit.fill,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                        AssetImage('${im[j]}'),
                        fit: BoxFit.fill,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Random dice = Random();
                Random dice1 = Random();
                int n= dice.nextInt(6);
                int  z= dice1.nextInt(6);
                setState(() {
                  sum=2;
                  i=n;
                  j=z;
                  sum=i+j+sum;
                });
                print(sum);
              },
              child: Container(
                height: 70,width: 200,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text(
                    "RUN",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
