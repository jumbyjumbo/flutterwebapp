import 'package:flutter/material.dart';
import 'package:website/widgets/floatingmenu.dart';
import 'package:website/widgets/mainscreen.dart';
import 'widgets/aboutzaxorelmarquee.dart';
import 'utilities/pageoptions.dart';
import 'widgets/sidemenu.dart';
import 'widgets/titlecontainer.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

//website homepage
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // main screen ScrollController
  final ScrollController _mainScreenScrollController = ScrollController();

  //get the list of menu options' widgets
  final List<Widget> pageOptions = getPageOptions();

  //select the tapped button's index
  int _selectedIndex = 0;
  void _handleMenuSelection(int index) {
    setState(() {
      if (index < pageOptions.length) {
        _selectedIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //get screen size for responsive design
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    //app structure
    return Scaffold(
      //floating linktree button
      floatingActionButton: FloatingMenu(
        height: screenHeight / 10,
        width: screenWidth / 2,
        scrollController: _mainScreenScrollController,
      ),

      //main page layout
      body: ScrollConfiguration(
        //hide scrollbar
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child:
            //make website scrollable
            CustomScrollView(
          slivers: [
            //column of containers/slivers
            SliverList(
                delegate:
                    //website title container
                    SliverChildListDelegate([
              //website title widget
              TitleContainer(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                text: 'Zax0rL.arxiv',
              ),
            ])),

            //main content of website
            SliverStickyHeader(
              //make the marquee sticky
              header: AboutZaxorelMarquee(
                  screenWidth: screenWidth, screenHeight: screenHeight),

              //body of website
              sliver: SliverList(
                //list of containers for rest of website
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
                          //main display
                          MainScreen(
                            screenHeight: screenHeight,
                            screenWidth: screenWidth,
                            scrollController: _mainScreenScrollController,
                            child: pageOptions[_selectedIndex],
                          ),
                        ],
                      ),
                    ),
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
