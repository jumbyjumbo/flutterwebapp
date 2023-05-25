import 'package:flutter/widgets.dart';
import '../colors.dart';

class TitleContainer extends StatelessWidget {
  const TitleContainer({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      decoration: BoxDecoration(
          color: contrastPink,
          border: BorderDirectional(
              bottom: BorderSide(color: primaryColor, width: 4))),
      child: FittedBox(
        child: Text(
          'Zax0rL.arxiv',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "mondwest",
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}
