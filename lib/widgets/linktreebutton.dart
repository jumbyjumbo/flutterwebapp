import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/widgets/hoveranimatecontainer.dart';

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
      shadowShape: BoxShape.circle,
      child: GestureDetector(
        onTap: () {
          launchUrl(Uri.parse('https://linktr.ee/zaksorel'));
        },
        child: SizedBox(
            height: widget.screenHeight / 10,
            child: ClipOval(child: Image.asset('zaxorel.png'))),
      ),
    );
  }
}
