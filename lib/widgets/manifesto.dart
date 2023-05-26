import 'package:flutter/widgets.dart';

import '../utilities/colors.dart';

class Manifesto extends StatelessWidget {
  const Manifesto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          //title
          const SizedBox(
            width: double.infinity,
            child: FittedBox(
              child: Text('"テクノロジー & イノベーション"',
                  style: TextStyle(
                      letterSpacing: 0,
                      fontFamily: 'mondwest',
                      fontWeight: FontWeight.bold)),
            ),
          ),

          //manifesto
          SizedBox(
            width: double.infinity,
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "bit",
                  fontSize: 50,
                  color: primaryColor,
                ),
                children: const <TextSpan>[
                  //H1
                  TextSpan(
                      text: '\n"Singularity"\n',
                      style: TextStyle(fontSize: 50)),

                  //P1
                  TextSpan(text: '\n\n'),

                  //H2
                  TextSpan(
                      text: '"Automation"\n', style: TextStyle(fontSize: 75)),

                  //P2
                  TextSpan(text: '\n\n'),

                  //H3
                  TextSpan(
                      text: '"Nomadism"\n', style: TextStyle(fontSize: 75)),

                  //P3
                  TextSpan(text: '\n\n'),

                  //H4
                  TextSpan(
                      text: '"Network State"\n',
                      style: TextStyle(fontSize: 75)),

                  //P4
                  TextSpan(
                      text:
                          'A network state is a highly aligned online community with a capacity for collective action that crowdfunds territory around the world and eventually gains diplomatic recognition from pre-existing states.\nA network state is a social network with a moral innovation, a sense of national consciousness, a recognized founder, a capacity for collective action, an in-person level of civility, an integrated cryptocurrency, a consensual government limited by a social smart contract, an archipelago of crowdfunded physical territories, a virtual capital, and an on-chain census that proves a large enough population, income, and real-estate footprint to attain a measure of diplomatic recognition.\n\n'),

                  //H5
                  TextSpan(
                      text: '"Intelligence"\n', style: TextStyle(fontSize: 75)),

                  //P5
                  TextSpan(text: '\n\n'),

                  //H6
                  TextSpan(
                      text: '"Decentralisation"\n',
                      style: TextStyle(fontSize: 75)),

                  //P6
                  TextSpan(text: '\n\n'),

                  //H7
                  TextSpan(
                      text: '"Catalysts"\n', style: TextStyle(fontSize: 75)),

                  //P7
                  TextSpan(text: '\n\n'),

                  //H8
                  TextSpan(
                      text: '"Invitation"\n', style: TextStyle(fontSize: 75)),

                  //P8
                  TextSpan(text: '\n\n'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
