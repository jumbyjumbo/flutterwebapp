import 'package:flutter/material.dart';
import 'package:website/utilities/colors.dart';
import 'package:website/widgets/linktreebutton.dart';
import 'backtotopbutton.dart';

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
    return Container(
      height: height,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 30),
          //linktree button
          const LinktreeButton(),
          const Spacer(),
          //back to top button
          BackToTop(
              onTopButtonPressed: onTopButtonPressed,
              scrollController: scrollController),
          const Spacer(),
          //linktree button
          const LinktreeButton(),
        ],
      ),
    );
  }
}
