import 'package:flutter/material.dart';

class ScaleOnHoverWidget extends StatefulWidget {
  final Duration duration;
  final Curve curve;
  final double hoveredScale;
  final Widget child;
  const ScaleOnHoverWidget(
      {super.key,
      required this.duration,
      this.curve = Curves.linear,
      required this.child,
      required this.hoveredScale});

  @override
  State<ScaleOnHoverWidget> createState() => _ScaleOnHoverWidgetState();
}

class _ScaleOnHoverWidgetState extends State<ScaleOnHoverWidget> {
  var _currentScale = 1.0;
  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      scale: _currentScale,
      duration: widget.duration,
      child: MouseRegion(
          onEnter: (event) => setState(() {
                _currentScale = widget.hoveredScale;
              }),
          onExit: (event) => setState(() {
                _currentScale = 1.0;
              }),
          child: widget.child),
    );
  }
}
