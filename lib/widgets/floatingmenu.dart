import 'package:flutter/material.dart';
import 'package:website/widgets/buttons/linktreebutton.dart';
import 'buttons/backtotopbutton.dart';
import 'buttons/gobackbutton.dart';
import 'buttons/gonextbutton.dart';
import 'buttons/togglethemebutton.dart';

class FloatingMenu extends StatelessWidget {
  const FloatingMenu({
    super.key,
    this.height = 100,
    this.width = 100,
    this.onTopButtonPressed,
    required this.scrollController,
  });

  final double height;
  final double width;
  final VoidCallback? onTopButtonPressed;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 30),
          //go back button

          //back to top button
          SizedBox(
            width: 180,
            height: 50,
            child: BackToTopButton(
                onTopButtonPressed: onTopButtonPressed,
                scrollController: scrollController),
          ),
          const Spacer(),
          //go back button
          const GoBackButton(),
          const SizedBox(width: 15),
          //go next button
          const GoNextButton(),
          const SizedBox(width: 30),
          //linktree button
          const LinktreeButton(),
          const SizedBox(width: 30),
          const ToggleThemeButton(),
        ],
      ),
    );
  }
}
