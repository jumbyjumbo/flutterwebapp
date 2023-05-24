import 'package:flutter/widgets.dart';
import 'package:marquee/marquee.dart';

import '../colors.dart';

class AboutZaxorelMarquee extends StatelessWidget {
  const AboutZaxorelMarquee({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: contrastYellow,
          border: BorderDirectional(
              bottom: BorderSide(color: primaryColor, width: 4))),
      width: screenWidth,
      height: screenHeight / 10,
      child: Marquee(
        startPadding: screenWidth,
        style: TextStyle(fontSize: screenHeight / 10),
        blankSpace: screenWidth,
        velocity: 200,
        text:
            "Welcome! I'm Zaxorel, a 22-year-old entrepreneur and software engineer, building products with disruptive technologies. My expertise stretches across mathematics, computer science, finance, and business management. My ventures have already yielded 5 figure profits, soon to be six. Residing in both Toronto and Montreal, I'm deeply embedded in Canada's hottest tech hubs. My mission is ambitious: to utilize disruptive technologies such as LLMs, blockchains, and XR to be part of products that drive transformational change. By increasing manufacturing efficiency, reducing costs, and eliminating manual labor through automation, I aim to enable a 10x impact on entire sectors. I envision a future where such products liberate humanity, fostering a societal shift towards creative and innovative endeavors. I'm here to contribute to that future. Investors, co-founders, engineers - join me, let's shape the future together.",
      ),
    );
  }
}
