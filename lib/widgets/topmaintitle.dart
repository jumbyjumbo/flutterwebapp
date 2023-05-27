import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utilities/providers/randomcontrastcolor.dart';

class TopMainTitle extends StatelessWidget {
  const TopMainTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final randomColor = Provider.of<ColorProvider>(context).randomColor;

    return Container(
      decoration: BoxDecoration(
          border: BorderDirectional(
        bottom: BorderSide(color: Theme.of(context).primaryColor, width: 4),
      )),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FittedBox(
          fit: BoxFit.contain,
          child: RichText(
            text: TextSpan(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "bubble",
                  color: Theme.of(context).primaryColor,
                ),
                children: <TextSpan>[
                  const TextSpan(text: 'Zax'),
                  // Apply the random color to the '0'
                  TextSpan(text: '0', style: TextStyle(color: randomColor)),
                  const TextSpan(text: 'rl.arxiv'),
                ]),
          ),
        ),
      ),
    );
  }
}
