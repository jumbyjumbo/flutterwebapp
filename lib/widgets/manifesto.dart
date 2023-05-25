import 'package:flutter/widgets.dart';

import '../colors.dart';

class Manifesto extends StatelessWidget {
  const Manifesto({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textScaleFactor: 0.5,
      text: TextSpan(
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: "bit",
          fontSize: 100,
          color: primaryColor,
        ),
        children: const <TextSpan>[
          //H1
          TextSpan(text: '"Singularity"\n', style: TextStyle(fontSize: 150)),

          //P1
          TextSpan(text: '\n\n'),

          //H2
          TextSpan(text: '"Automation"\n', style: TextStyle(fontSize: 150)),

          //P2
          TextSpan(text: '\n\n'),

          //H3
          TextSpan(text: '"Nomadism"\n', style: TextStyle(fontSize: 150)),

          //P3
          TextSpan(text: '\n\n'),

          //H4
          TextSpan(text: '"Network States"\n', style: TextStyle(fontSize: 150)),

          //P4
          TextSpan(text: '\n\n'),

          //H5
          TextSpan(text: '"Intelligence"\n', style: TextStyle(fontSize: 150)),

          //P5
          TextSpan(text: '\n\n'),

          //H6
          TextSpan(
              text: '"Decentralisation"\n', style: TextStyle(fontSize: 150)),

          //P6
          TextSpan(text: '\n\n'),

          //H7
          TextSpan(text: '"Catalysts"\n', style: TextStyle(fontSize: 150)),

          //P7
          TextSpan(text: '\n\n'),

          //H8
          TextSpan(text: '"Invitation"\n', style: TextStyle(fontSize: 150)),

          //P8
          TextSpan(text: '\n\n'),
        ],
      ),
    );
  }
}
