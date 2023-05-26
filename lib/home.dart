import 'package:flutter/material.dart';
import 'package:website/widgets/mainscreen.dart';
import 'widgets/aboutzaxorelmarquee.dart';
import 'widgets/linktreebutton.dart';
import 'utilities/pageoptions.dart';
import 'widgets/sidemenu.dart';
import 'widgets/titlecontainer.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final List<Widget> pageOptions = getPageOptions();
  //select the tapped button's index
  void _handleMenuSelection(int index) {
    setState(() {
      if (index < pageOptions.length) {
        _selectedIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      //floating linktree button
      floatingActionButton: LinktreeButton(
        screenHeight: screenHeight,
      ),

      //page layout
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
                    //body
                    SizedBox(
                      height: screenHeight * 0.9,
                      width: screenWidth,
                      child: Row(
                        children: [
                          //side menu
                          SideMenu(
                            onMenuPressed: _handleMenuSelection,
                            screenHeight: screenHeight,
                          ),

                          //main screen
                          MainScreen(
                            screenHeight: screenHeight,
                            screenWidth: screenWidth,
                            child: pageOptions[_selectedIndex],
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
