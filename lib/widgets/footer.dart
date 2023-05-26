import 'package:flutter/material.dart';
import '../colors.dart';
import 'neuebutton.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

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
        child: Row(
          children: [
            NeueButton(
              onTap: () {},
              child: Container(
                height: 32,
                width: 32,
                alignment: Alignment.center,
                color: contrastPink,
                child: const Icon(
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
