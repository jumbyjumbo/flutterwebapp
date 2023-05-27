import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/utilities/providers/navprovider.dart';
import 'neuebutton.dart';

class GoNextButton extends StatelessWidget {
  const GoNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var navProvider = Provider.of<NavProvider>(context, listen: false);

    return NeueButton(
      shadowBoxPreset: ShadowBoxPreset.topLeft,
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      onTap: navProvider.navigateNext,
      child: const FittedBox(
        alignment: Alignment.center,
        child: Icon(
          Icons.north_east_rounded,
        ),
      ),
    );
  }
}
