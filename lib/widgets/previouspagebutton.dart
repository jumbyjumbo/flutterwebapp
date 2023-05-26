import 'package:flutter/material.dart';
import 'package:website/utilities/colors.dart';
import 'package:website/widgets/neuebutton.dart';

class PreviousPageButton extends StatefulWidget {
  const PreviousPageButton({
    super.key,
  });

  @override
  State<PreviousPageButton> createState() => _PreviousPageButtonState();
}

class _PreviousPageButtonState extends State<PreviousPageButton> {
  @override
  Widget build(BuildContext context) {
    return NeueButton(
      shadowBoxPreset: ShadowBoxPreset.topLeft,
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      onTap: () {
        ;
      },
      child: const FittedBox(
        alignment: Alignment.center,
        child: Icon(
          Icons.north_west_rounded,
        ),
      ),
    );
  }
}
