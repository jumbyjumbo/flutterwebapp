import 'package:flutter/material.dart';
import 'package:website/utilities/colors.dart';

import 'neuebutton.dart';

class BackToTop extends StatelessWidget {
  const BackToTop({
    super.key,
    required this.onTopButtonPressed,
    required this.scrollController,
  });

  final VoidCallback? onTopButtonPressed;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return NeueButton(
      color: contrastYellow,
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
      child: const FittedBox(
        child: Icon(
          Icons.arrow_upward_rounded,
        ),
      ),
    );
  }
}
