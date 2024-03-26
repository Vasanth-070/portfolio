// ignore: file_names
// ignore: file_names

import 'package:flutter/material.dart';

class IconWithImage extends StatelessWidget {
  final IconWithImageData data;
  const IconWithImage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: data.iconSize.height,
        width: data.iconSize.width,
        color: data.backgroundColor,
        alignment: Alignment.center,
        child: Image(
          image: AssetImage(data.imagePath),
          height: data.imageSize.height,
          width: data.imageSize.width,
        ));
  }
}

class IconWithImageData {
  final Size iconSize;
  final Size imageSize;
  final String imagePath;
  final Color backgroundColor;
  const IconWithImageData(
      {required this.iconSize,
      required this.imageSize,
      this.backgroundColor = Colors.transparent,
      required this.imagePath});
}
