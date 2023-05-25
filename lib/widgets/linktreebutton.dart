import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/widgets/hoveranimatecontainer.dart';
import '../colors.dart';

class LinktreeButton extends StatefulWidget {
  const LinktreeButton({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  State<LinktreeButton> createState() => _LinktreeButtonState();
}

class _LinktreeButtonState extends State<LinktreeButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return HoverAnimateContainer(
      child: GestureDetector(
        onTap: () {
          launchUrl(Uri.parse('https://linktr.ee/zaksorel'));
        },
        child: Container(
            height: widget.screenHeight / 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: primaryColor,
                width: 2.5,
              ),
            ),
            child: ClipOval(child: Image.asset('zaxorel.png'))),
      ),
    );
  }
}
