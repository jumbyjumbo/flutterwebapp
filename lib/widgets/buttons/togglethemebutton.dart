import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../utilities/providers/randomcontrastcolor.dart';
import '../../utilities/providers/themeprovider.dart';
import 'neuebutton.dart';

class ToggleThemeButton extends StatelessWidget {
  const ToggleThemeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NeueButton(
      shadowBoxPreset: ShadowBoxPreset.topRight,
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      onTap: () {
        Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
        Provider.of<ColorProvider>(context, listen: false)
            .generateRandomColor();
      },
      child: const FittedBox(
        alignment: Alignment.center,
        child: Icon(
          Icons.light_mode_rounded,
        ),
      ),
    );
  }
}
