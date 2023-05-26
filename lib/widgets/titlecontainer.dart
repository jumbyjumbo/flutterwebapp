import 'package:flutter/widgets.dart';
import '../colors.dart';

class TitleContainer extends StatelessWidget {
  const TitleContainer({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.text,
  });

  final double screenWidth;
  final double screenHeight;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      decoration: BoxDecoration(
          color: contrastPink,
          border: BorderDirectional(
              bottom: BorderSide(color: primaryColor, width: 4))),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FittedBox(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "bubble",
              color: primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
