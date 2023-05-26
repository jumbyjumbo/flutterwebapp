import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:website/utilities/colors.dart';

class NeueButton extends StatefulWidget {
  final Widget child;
  final BoxShape shadowShape;
  final VoidCallback onTap;
  final BorderRadius borderRadius;
  final Color? color;
  final double height;
  final double width;

  const NeueButton({
    super.key,
    required this.child,
    this.shadowShape = BoxShape.rectangle,
    required this.onTap,
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    this.color,
    this.height = 60,
    this.width = 60,
  });

  @override
  _NeueButtonState createState() => _NeueButtonState();
}

class _NeueButtonState extends State<NeueButton> {
  bool isHovered = false;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return

        //check for hover
        MouseRegion(
      onEnter: (event) => setState(() => isHovered = true),
      onExit: (event) => setState(() => isHovered = false),
      child:
          //register tap
          GestureDetector(
        //special action
        onTap: () {
          widget.onTap();
        },
        //press
        onTapDown: (TapDownDetails details) {
          HapticFeedback.heavyImpact();
          setState(() => isPressed = true);
        },
        //unpress
        onTapUp: (TapUpDetails details) {
          setState(() => isPressed = false);
        },
        //unpress if cancelled
        onTapCancel: () => setState(() => isPressed = false),
        //button decoration
        child: AnimatedContainer(
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
            color: widget.color ??
                contrastBlue, // use primaryColor if color is null
            borderRadius: widget.borderRadius,
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
          duration: const Duration(milliseconds: 80),
          child: widget.child,
        ),
      ),
    );
  }
}
