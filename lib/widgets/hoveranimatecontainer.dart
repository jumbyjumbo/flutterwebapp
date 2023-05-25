import 'package:flutter/material.dart';
import 'package:website/colors.dart';

class HoverAnimateContainer extends StatefulWidget {
  final Widget child;
  final shadowShape;

  const HoverAnimateContainer({
    super.key,
    required this.child,
    this.shadowShape,
  });

  @override
  _HoverAnimateContainerState createState() => _HoverAnimateContainerState();
}

class _HoverAnimateContainerState extends State<HoverAnimateContainer> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => isHovered = true),
      onExit: (event) => setState(() => isHovered = false),
      child: AnimatedContainer(
        decoration: BoxDecoration(
          border: Border.all(
            color: primaryColor,
            width: 2.5,
          ),
          shape: widget.shadowShape,
          boxShadow: isHovered
              ? [
                  BoxShadow(
                    color: primaryColor,
                    spreadRadius: 0,
                    blurRadius: 0,
                    offset: const Offset(3, 3),
                  ),
                ]
              : [],
        ),
        transform: (isHovered
            ? (Matrix4.identity()..translate(-3, -3))
            : Matrix4.identity()),
        duration: const Duration(milliseconds: 100),
        child: widget.child,
      ),
    );
  }
}
