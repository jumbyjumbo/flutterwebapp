import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:website/colors.dart';

class NeueButton extends StatefulWidget {
  final Widget child;
  final BoxShape shadowShape;

  const NeueButton({
    super.key,
    required this.child,
    this.shadowShape = BoxShape.rectangle,
  });

  @override
  _NeueButtonState createState() => _NeueButtonState();
}

class _NeueButtonState extends State<NeueButton> {
  bool isHovered = false;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => isHovered = true),
      onExit: (event) => setState(() => isHovered = false),
      child: GestureDetector(
        onTapDown: (TapDownDetails details) {
          HapticFeedback.heavyImpact();
          setState(() => isPressed = true);
        },
        onTapUp: (TapUpDetails details) => setState(() => isPressed = false),
        onTapCancel: () => setState(() => isPressed = false),
        child: AnimatedContainer(
          decoration: BoxDecoration(
            border: Border.all(
              color: primaryColor,
              width: 2.5,
            ),
            shape: widget.shadowShape,
            boxShadow: isHovered || isPressed
                ? [
                    BoxShadow(
                      color: primaryColor,
                      spreadRadius: 0,
                      blurRadius: 0,
                      offset:
                          isPressed ? const Offset(0, 0) : const Offset(4, 4),
                    ),
                  ]
                : [],
          ),
          transform: isPressed
              ? Matrix4.identity()
              : (isHovered
                  ? (Matrix4.identity()..translate(-4, -4))
                  : Matrix4.identity()),
          duration: const Duration(milliseconds: 100),
          child: widget.child,
        ),
      ),
    );
  }
}
