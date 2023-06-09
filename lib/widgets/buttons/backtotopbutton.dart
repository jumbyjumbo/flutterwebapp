import 'package:flutter/material.dart';
import 'neuebutton.dart';

class BackToTopButton extends StatelessWidget {
  const BackToTopButton({
    super.key,
    required this.onTopButtonPressed,
    required this.scrollController,
  });

  final VoidCallback? onTopButtonPressed;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return NeueButton(
      shadowBoxPreset: ShadowBoxPreset.top,
      onTap: onTopButtonPressed ??
          () {
            scrollController.animateTo(
              0.0,
              curve: Curves.easeInOut,
              duration: const Duration(milliseconds: 100),
            );
          },
      //back to top icon
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: FittedBox(
          child: Text("back to top",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                wordSpacing: -10,
                fontWeight: FontWeight.bold,
                fontFamily: "bubble",
              )),
        ),
      ),
    );
  }
}
