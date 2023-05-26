import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/utilities/colors.dart';
import 'package:website/widgets/neuebutton.dart';

class LinktreeButton extends StatefulWidget {
  const LinktreeButton({
    super.key,
  });

  @override
  State<LinktreeButton> createState() => _LinktreeButtonState();
}

class _LinktreeButtonState extends State<LinktreeButton> {
  @override
  Widget build(BuildContext context) {
    return NeueButton(
      shadowBoxPreset: ShadowBoxPreset.topRight,
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      onTap: () {
        launchUrl(Uri.parse('https://linktr.ee/zaksorel'));
      },
      child: const FittedBox(
        alignment: Alignment.center,
        child: Icon(
          Icons.north_east_rounded,
        ),
      ),
    );
  }
}
