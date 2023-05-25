import 'package:flutter/material.dart';
import 'package:website/colors.dart';
import 'widgets/aboutzaxorelmarquee.dart';
import 'widgets/linktreebutton.dart';
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
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            TitleContainer(screenWidth: screenWidth),
          ])),
          SliverStickyHeader(
            header: AboutZaxorelMarquee(
                screenWidth: screenWidth, screenHeight: screenHeight),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  SizedBox(
                    height: 2000,
                    width: screenWidth,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
