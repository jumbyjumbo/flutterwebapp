import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/widgets/buttons/neuebutton.dart';

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
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: FittedBox(
          alignment: Alignment.center,
          child: Icon(
            Icons.hub_rounded,
          ),
        ),
      ),
    );
  }
}
