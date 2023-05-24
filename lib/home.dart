import 'package:flutter/material.dart';
import 'colors.dart';
import 'widgets/aboutzaxorelmarquee.dart';
import 'widgets/titlecontainer.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Zax0reL title
            TitleContainer(screenWidth: screenWidth),

            // About Zax0reL banner slideshow
            AboutZaxorelMarquee(
                screenWidth: screenWidth, screenHeight: screenHeight),

            // row of social media icons
            Container(
              width: screenWidth,
              height: screenHeight / 10,
              child: Row(
                children: [
                  // github icon

                  // twitter icon

                  // linkedin icon

                  // instagram icon

                  // youtube icon
                ],
              ),
            ),

            // gridview of projects
          ],
        ),
      ),
    );
  }
}
