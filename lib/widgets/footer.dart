import 'package:flutter/material.dart';
import '../utilities/colors.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
    this.onTopButtonPressed,
  });

  final VoidCallback? onTopButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: contrastPink,
        border: Border(
          top: BorderSide(color: primaryColor, width: 4),
        ),
      ),
      height: 100,
      width: double.infinity,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        //menu items for footer
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
