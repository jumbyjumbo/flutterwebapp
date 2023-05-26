import 'package:flutter/material.dart';
import '../utilities/colors.dart';
import 'neuebutton.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
    required this.screenHeight,
    required this.onMenuPressed,
  });

  final double screenHeight;
  final Function(int) onMenuPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: BorderDirectional(
              end: BorderSide(color: primaryColor, width: 4))),
      width: screenHeight / 10,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: GridView.count(
          crossAxisCount: 1,

          //make 100 buttons
          children: List.generate(100, (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),

              //each buton
              child: NeueButton(
                onTap: () {
                  onMenuPressed(index);
                },
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: FittedBox(
                    child: Text(
                      textAlign: TextAlign.center,
                      '$index',
                      style: const TextStyle(
                          fontFamily: "bit", fontWeight: FontWeight.bold),
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
