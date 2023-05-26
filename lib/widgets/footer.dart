import 'package:flutter/material.dart';
import '../utilities/colors.dart';
import 'neuebutton.dart';

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
        color: contrastGreen,
        border: Border(
          top: BorderSide(color: primaryColor, width: 4),
        ),
      ),
      height: 100,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        //menu items for footer
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //back to top button
            NeueButton(
              shadowShape: BoxShape.circle,
              onTap: onTopButtonPressed ?? () {},
              //back to top icon
              child: Container(
                decoration: BoxDecoration(
                  color: contrastPink,
                  shape: BoxShape.circle,
                ),
                height: 64,
                width: 64,
                alignment: Alignment.center,
                child: const Icon(
                  size: 48,
                  Icons.arrow_upward_rounded,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
