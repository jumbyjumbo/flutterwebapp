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
          children: List.generate(100, (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: NeueButton(
                onTap: () {
                  onMenuPressed(index);
                },
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
