import 'package:flutter/material.dart';
import 'package:website/widgets/linktreebutton.dart';
import 'backtotopbutton.dart';
import 'gobackbutton.dart';
import 'gonextbutton.dart';

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
          const GoBackButton(),
          const Spacer(),
          //back to top button
          SizedBox(
            width: 180,
            height: 50,
            child: BackToTopButton(
                onTopButtonPressed: onTopButtonPressed,
                scrollController: scrollController),
          ),
          const Spacer(),

          //go next button
          const GoNextButton(),
          const SizedBox(width: 30),
          //linktree button
          const LinktreeButton(),
        ],
      ),
    );
  }
}
