import 'package:flutter/material.dart';

import '../colors.dart';
import 'neuebutton.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: secondaryColor,
          border: BorderDirectional(
              end: BorderSide(color: primaryColor, width: 4))),
      width: screenHeight / 10,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: GridView.count(
          crossAxisCount: 1,
          children: List.generate(100, (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: NeueButton(
                onTap: () {},
                shadowShape: BoxShape.rectangle,
                child: Container(
                  color: contrastBlue,
                  child: Center(
                    child: Text(
                      '$index',
                      style: const TextStyle(fontFamily: "bit", fontSize: 30),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
