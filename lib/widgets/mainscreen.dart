import 'package:flutter/widgets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen(
      {super.key,
      required this.child,
      required this.screenHeight,
      required this.screenWidth});
  final Widget child;
  final double screenHeight;
  final double screenWidth;

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          child: _child,
        ),
      ),
    );
  }
}
