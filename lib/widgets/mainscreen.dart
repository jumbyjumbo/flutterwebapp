import 'package:flutter/widgets.dart';

import 'footer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen(
      {super.key,
      required this.child,
      required this.screenHeight,
      required this.screenWidth,
      required this.scrollController});
  final Widget child;
  final double screenHeight;
  final double screenWidth;
  final ScrollController scrollController;

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //control scrolling
  final ScrollController _scrollController = ScrollController();

  //child widget to be displayed
  late Widget _child;
  @override
  void initState() {
    super.initState();
    _child = widget.child;
  }

  void updateChild(Widget newChild) {
    setState(() {
      _child = newChild;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.screenHeight * 0.9,
      width: widget.screenWidth - widget.screenHeight / 10,

      //hide scrollbar
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),

        //scrollable column
        child: SingleChildScrollView(
          controller: widget.scrollController,
          child: Column(
            children: [
              _child,
              //footer of main screen
              // Footer(
              //   onTopButtonPressed: () {
              //     _scrollController.animateTo(
              //       0.0,
              //       curve: Curves.easeInOut,
              //       duration: const Duration(milliseconds: 100),
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
