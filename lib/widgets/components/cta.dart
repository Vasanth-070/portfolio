import 'package:flutter/material.dart';

class CTA extends StatefulWidget {
  final CTAData data;
  const CTA({super.key, required this.data});

  @override
  State<CTA> createState() => _CTAState();
}

class _CTAState extends State<CTA> {
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
          padding: widget.data.padding,
          decoration: BoxDecoration(
              color: isHovered
                  ? widget.data.hoverColor
                  : widget.data.backgroundColor,
              borderRadius:
                  BorderRadius.all(Radius.circular(widget.data.cornerRadius))),
          child: Text(
            widget.data.text,
            style: widget.data.textStyle,
            textAlign: TextAlign.center,
          ),
        ));
  }
}

class CTAData {
  final String text;
  final TextStyle textStyle;
  final Size size;
  final Color backgroundColor;
  final double cornerRadius;
  final EdgeInsets padding;
  final Color? hoverColor;
  const CTAData(
      {required this.text,
      required this.size,
      required this.textStyle,
      required this.backgroundColor,
      required this.cornerRadius,
      required this.padding,
      this.hoverColor});
}
