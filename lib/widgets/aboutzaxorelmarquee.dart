import 'package:flutter/widgets.dart';
import 'package:marquee/marquee.dart';
import '../utilities/colors.dart';
import '../utilities/calcage.dart';

class AboutZaxorelMarquee extends StatelessWidget {
  const AboutZaxorelMarquee({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.height,
    required this.width,
    this.fontSize = 50,
  });

  final double height;
  final double width;
  final double screenWidth;
  final double screenHeight;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    //get my age
    var age = calculateAge(DateTime(2001, 06, 01));

    return Container(
      decoration: BoxDecoration(
          color: contrastYellow,
          border: BorderDirectional(
              bottom: BorderSide(color: primaryColor, width: 4),
              top: BorderSide(color: primaryColor, width: 4))),
      width: width,
      height: height,
      child: Marquee(
        startPadding: screenWidth,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: "bit",
          fontSize: fontSize,
        ),
        blankSpace: screenWidth,
        velocity: 350,
        text:
            "Welcome! I'm Zak Sorel, a $age-year-old entrepreneur and software engineer, building products with disruptive technologies. My expertise stretches across mathematics, computer science, finance, and business management. My ventures have already yielded 5 figure profits, soon to be six. Residing in both Toronto and Montreal, I'm deeply embedded in Canada's hottest tech hubs. My mission is ambitious: to utilize disruptive technologies such as LLMs, blockchains, and XR to be part of products that drive transformational change. By increasing manufacturing efficiency, reducing costs, and eliminating manual labor through automation, I aim to enable a 10x impact on entire sectors. I envision a future where such products liberate humanity, fostering a societal shift towards creative and innovative endeavors. I'm here to contribute to that future. Investors, co-founders, engineers - join me, let's shape the future together.",
      ),
    );
  }
}
