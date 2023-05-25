import 'package:flutter/material.dart';
import 'package:website/colors.dart';
import 'package:website/widgets/mainscreen.dart';
import 'widgets/aboutzaxorelmarquee.dart';
import 'widgets/linktreebutton.dart';
import 'widgets/sidemenu.dart';
import 'widgets/titlecontainer.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

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
      //floating linktree button
      floatingActionButton: LinktreeButton(
        screenHeight: screenHeight,
      ),

      //main page layout
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              TitleContainer(
                  screenWidth: screenWidth, screenHeight: screenHeight),
            ])),
            SliverStickyHeader(
              header: AboutZaxorelMarquee(
                  screenWidth: screenWidth, screenHeight: screenHeight),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SizedBox(
                      height: screenHeight * 0.9,
                      width: screenWidth,
                      child: Row(
                        children: [
                          //side menu
                          SideMenu(screenHeight: screenHeight),

                          //main screen
                          MainScreen(
                            screenHeight: screenHeight,
                            screenWidth: screenWidth,
                            child: Text(
                                '''"Our mission is to incubate and empower the next generation of technological innovators and disruptors. Using cutting-edge tools and AI, we aim to foster an ecosystem where young minds are equipped to explore, design, and engineer transformative technological solutions. With an unwavering focus on questioning the established norms, we strive to democratize access to resources and knowledge, enabling our young visionaries to engineer technologies that will revolutionize our society and lifestyles. As we stand on the cusp of technological evolution, we see every question as an opportunity to build the future."''',
                                style: TextStyle(
                                  fontFamily: "bit",
                                  fontSize: 100,
                                  color: primaryColor,
                                )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
