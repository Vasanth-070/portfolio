import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

class StackedImage extends StatelessWidget {
  const StackedImage({
    super.key,
    required this.imageAlignment,
    required this.imageSize,
    required this.image, required this.borderColor,
  });
  final Alignment imageAlignment;
  final Size imageSize;
  final Color borderColor;
  final String image;

  final EdgeInsets profilePicPadding = const EdgeInsets.all(7);
  final double stackAligmentSize = 30;
  Size get profilePicContainerSize => Size(
      imageSize.width + profilePicPadding.left * 2,
      imageSize.height + profilePicPadding.left * 2);
  Size get stackViewSize => Size(
      profilePicContainerSize.width + stackAligmentSize,
      profilePicContainerSize.height + stackAligmentSize);

  Alignment get bgAlignment {
    switch (imageAlignment) {
      case Alignment.topLeft:
        return Alignment.bottomRight;
      case Alignment.topRight:
        return Alignment.bottomLeft;
      case Alignment.bottomLeft:
        return Alignment.topRight;
      case Alignment.bottomRight:
        return Alignment.topLeft;
      case Alignment.centerLeft:
        return Alignment.centerRight;
      case Alignment.centerRight:
        return Alignment.centerLeft;
      default:
        return Alignment.center;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: stackViewSize.height,
      width: stackViewSize.width,
      child: Stack(
        children: [
          Align(
              alignment: bgAlignment,
              child: Container(
                height: profilePicContainerSize.height,
                width: profilePicContainerSize.width,
                padding: profilePicPadding,
                color: Constants.themeColor.gray200,
              )),
          Align(
            alignment: imageAlignment,
            child: Container(
              height: profilePicContainerSize.height,
              width: profilePicContainerSize.width,
              padding: profilePicPadding,
              color: borderColor,
              child: Image.asset(
                getAssetPath(image),
                height: imageSize.height,
                width: imageSize.width,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
