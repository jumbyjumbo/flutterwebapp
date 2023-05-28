import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//shadow box presets
enum ShadowBoxPreset {
  top,
  topLeft,
  topRight,
  bottom,
}

class NeueButton extends StatefulWidget {
  final Widget child;
  final VoidCallback onTap;
  final BorderRadius borderRadius;
  final Color? color;
  final double height;
  final double width;
  final ShadowBoxPreset shadowBoxPreset;

  const NeueButton({
    super.key,
    required this.child,
    required this.onTap,
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    this.color,
    this.height = 75,
    this.width = 75,
    this.shadowBoxPreset = ShadowBoxPreset.top,
  });

  @override
  _NeueButtonState createState() => _NeueButtonState();
}

class _NeueButtonState extends State<NeueButton> {
  bool isHovered = false;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    Offset shadowOffset;
    Matrix4 hoverTransform;

    switch (widget.shadowBoxPreset) {
      case ShadowBoxPreset.top:
        shadowOffset = const Offset(0, 4);
        hoverTransform = Matrix4.identity()..translate(0, -4);
        break;
      case ShadowBoxPreset.topLeft:
        shadowOffset = const Offset(4, 4);
        hoverTransform = Matrix4.identity()..translate(-4, -4);
        break;
      case ShadowBoxPreset.topRight:
        shadowOffset = const Offset(-4, 4);
        hoverTransform = Matrix4.identity()..translate(4, -4);
        break;
      case ShadowBoxPreset.bottom:
        shadowOffset = const Offset(0, -4);
        hoverTransform = Matrix4.identity()..translate(0, 4);
        break;
    }

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

          //color and border shape
          decoration: BoxDecoration(
            color: widget.color ?? Theme.of(context).scaffoldBackgroundColor,
            borderRadius: widget.borderRadius,
            border: Border.all(
              color: Theme.of(context).primaryColor,
              width: 2.5,
            ),
            boxShadow: isHovered || isPressed
                ? [
                    BoxShadow(
                      color: Theme.of(context).primaryColor,
                      spreadRadius: 0,
                      blurRadius: 0,
                      offset: isPressed ? const Offset(0, 0) : shadowOffset,
                    ),
                  ]
                : [],
          ),
          transform: isPressed
              ? Matrix4.identity()
              : (isHovered ? hoverTransform : Matrix4.identity()),
          duration: const Duration(milliseconds: 50),
          child: widget.child,
        ),
      ),
    );
  }
}
