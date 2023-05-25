import 'package:flutter/material.dart';
import 'package:website/colors.dart';

class HoverAnimateContainer extends StatefulWidget {
  final Widget child;

  const HoverAnimateContainer({super.key, required this.child});

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
          shape: BoxShape.circle,
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
