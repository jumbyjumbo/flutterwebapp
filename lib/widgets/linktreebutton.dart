import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/widgets/neuebutton.dart';

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
    return NeueButton(
      onTap: () {
        launchUrl(Uri.parse('https://linktr.ee/zaksorel'));
      },
      shadowShape: BoxShape.circle,
      child: SizedBox(
          width: widget.screenHeight / 12,
          height: widget.screenHeight / 12,
          child: ClipOval(child: Image.asset('zaxorel.png'))),
    );
  }
}
