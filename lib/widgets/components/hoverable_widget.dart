import 'package:flutter/cupertino.dart';

class HoverableWidget extends StatefulWidget {
  final Widget child;
  final HoverableWidgetData data;
  final VoidCallback? onTapped;
  const HoverableWidget(
      {super.key, required this.child, required this.data, this.onTapped});

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
      child: GestureDetector(
        onTap: widget.onTapped,
        child: Container(
          height: widget.data.size.height,
          width: widget.data.size.width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: isHovered
                  ? widget.data.hoveredColor
                  : widget.data.backgroundColor,
              borderRadius:
                  BorderRadius.all(Radius.circular(widget.data.borderRadius))),
          child: widget.child,
        ),
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
