import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:website/widgets/floatingmenu.dart';
import 'package:website/widgets/mainscreen.dart';
import 'utilities/providers/navprovider.dart';
import 'widgets/aboutzaxorelmarquee.dart';
import 'pageoptions.dart';
import 'widgets/sidemenu.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

import 'widgets/topmaintitle.dart';

//website homepage
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // main screen ScrollController
  final ScrollController _mainScreenScrollController = ScrollController();

  // source ScrollController
  final ScrollController _sourceScrollController = ScrollController();

  //get the list of menu options' widgets
  final List<Widget> pageOptions = getPageOptions();

  @override
  Widget build(BuildContext context) {
    //get screen size for responsive design
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    //navigation history
    var navProvider = Provider.of<NavProvider>(context, listen: true);

    //app structure
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      //floating linktree button
      floatingActionButton: FloatingMenu(
        height: screenHeight / 10,
        width: screenWidth - screenHeight / 10,
        scrollController: _mainScreenScrollController,
      ),

      //main page layout
      body: ScrollConfiguration(
        //hide scrollbar
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child:
            //make website scrollable
            CustomScrollView(
          controller: _sourceScrollController,
          slivers: [
            //column of containers/slivers
            //website title widget
            SliverList(
                delegate: SliverChildListDelegate([
              const TopMainTitle(),
            ])),

            //main content of website
            SliverStickyHeader(
              //make the marquee sticky
              header: AboutZaxorelMarquee(
                textColor: Theme.of(context).primaryColor,
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                height: screenHeight * 0.07,
                width: screenWidth,
              ),

              //body of website
              sliver: SliverList(
                //list of containers for rest of website
                delegate: SliverChildListDelegate(
                  [
                    //body
                    SizedBox(
                      height: screenHeight * 0.93,
                      width: screenWidth,
                      child: Row(
                        children: [
                          //side menu
                          SideMenu(
                            onMenuPressed: navProvider.navigateTo,
                            screenHeight: screenHeight,
                          ),
                          //main display
                          MainScreen(
                            screenHeight: screenHeight,
                            screenWidth: screenWidth,
                            scrollController: _mainScreenScrollController,
                            child: pageOptions[navProvider.currentIndex],
                          ),
                        ],
                      ),
                    ),
                    //next body
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
