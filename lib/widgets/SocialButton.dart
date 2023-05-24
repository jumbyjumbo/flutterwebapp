import 'package:flutter/material.dart';

import '../colors.dart';

class SocialButton extends StatefulWidget {
  const SocialButton({super.key});

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.maxFinite / 2,
        decoration: BoxDecoration(
            color: contrastYellow,
            border: Border.all(color: primaryColor, width: 4)),
        child: const Center(child: Text("Github")));
  }
}
