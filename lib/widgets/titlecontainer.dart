import 'package:flutter/widgets.dart';
import '../colors.dart';

class TitleContainer extends StatelessWidget {
  const TitleContainer({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      decoration: BoxDecoration(
          color: contrastPink,
          border: BorderDirectional(
              bottom: BorderSide(color: primaryColor, width: 4))),
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(
          "Zax0reL",
          style: TextStyle(
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}
