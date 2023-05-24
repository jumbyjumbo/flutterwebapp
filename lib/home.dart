import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

import 'colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          //title container

          Container(
            width: screenWidth,
            decoration: BoxDecoration(
                color: contrastPink,
                border: BorderDirectional(
                    bottom: BorderSide(color: primaryColor, width: 4))),
            child: FittedBox(
              child: Text(
                "Zaxorel",
                style: TextStyle(
                  color: primaryColor,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: contrastPink,
                border: BorderDirectional(
                    bottom: BorderSide(color: primaryColor, width: 4))),
            width: screenWidth,
            height: screenHeight / 10,
            child: Marquee(
              style: TextStyle(fontSize: screenWidth / 20),
              blankSpace: 100,
              text: "Hello. Welcome to my website. I'm Zaxorel.",
            ),
          )
        ],
      ),
    );
  }
}
