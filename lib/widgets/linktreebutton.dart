import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
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
    return MouseRegion(
      onEnter: (event) {
        hovering(true);
      },
      onExit: (event) {
        hovering(false);
      },
      child: AnimatedContainer(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: isHovered
              ? [
                  BoxShadow(
                    color: primaryColor,
                    spreadRadius: 0,
                    blurRadius: 0,
                    offset: Offset(3, 3),
                  ),
                ]
              : [],
        ),
        //translation animation
        transform: (isHovered
            ? (Matrix4.identity()..translate(-3, -3))
            : Matrix4.identity()),

        //animation duration
        duration: const Duration(milliseconds: 100),

        //button
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
                  width: 2,
                ),
              ),
              child: ClipOval(child: Image.asset('zaxorel.png'))),
        ),
      ),
    );
  }

  void hovering(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}
