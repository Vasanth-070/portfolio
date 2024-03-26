
import 'package:flutter/cupertino.dart';

class HoverableWidget extends StatefulWidget {
  final Widget child;
  final HoverableWidgetData data;
  const HoverableWidget({super.key, required this.child, required this.data});

  @override
  State<HoverableWidget> createState() => _HoverableWidgetState();
}

class _HoverableWidgetState extends State<HoverableWidget> {
  var isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => setState(() {
        isHovered = true;
      }),
      onExit: (event) => setState(() {
        isHovered = false;
      }),
      child: Container(
        height: widget.data.size.height,
        width: widget.data.size.width,
        decoration: BoxDecoration(
            color: isHovered
                ? widget.data.hoveredColor
                : widget.data.backgroundColor,
            borderRadius:
                BorderRadius.all(Radius.circular(widget.data.borderRadius))),
        child: widget.child,
      ),
    );
  }
}

class HoverableWidgetData {
  final Color backgroundColor;
  final Color hoveredColor;
  final Size size;
  final double borderRadius;

  const HoverableWidgetData(
      {required this.backgroundColor,
      required this.hoveredColor,
      required this.size,
      required this.borderRadius});
}