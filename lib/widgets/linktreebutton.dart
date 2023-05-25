import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../colors.dart';

class LinktreeButton extends StatelessWidget {
  const LinktreeButton({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight / 10,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: primaryColor,
            offset: const Offset(2, 4), // Offset shadow to bottom left
          ),
        ],
        shape: BoxShape.circle,
        border: Border.all(
          color: primaryColor, // Replace with your custom color
          width: 2, // Replace with your desired width
        ),
      ),
      child: ClipOval(
        child: InkWell(
          //remove default effect
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,

          //launch linktree
          onTap: () {
            launchUrl(Uri.parse('https://linktr.ee/zaksorel'));
          },

          onHover: (value) {
            //translation animation with shadows
          },

          child: Image.asset('zaxorel.png'),
        ),
      ),
    );
  }
}
