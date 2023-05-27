import 'package:flutter/widgets.dart';

class MainScreen extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth - screenHeight / 10,

      //hide scrollbar
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          scrollbars: false,
        ),

        //scrollable column
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              child,
              //footer of main screen
            ],
          ),
        ),
      ),
    );
  }
}
