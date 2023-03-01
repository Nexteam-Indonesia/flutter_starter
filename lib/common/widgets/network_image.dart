import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NetworkImage extends StatelessWidget {
  const NetworkImage({
    super.key,
    required this.imageUrl,
    this.placeholderWidget,
    this.errorWidget,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
  });

  //image url to load image
  final String imageUrl;

  //loading widget while image is loading
  final Widget? placeholderWidget;

  //error widget to show error when image loading failed or invalid image url
  final Widget? errorWidget;

  final double? width;
  final double? height;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      fit: fit,
      //TODO implement placeholder image
      placeholder: (_, __) {
        return placeholderWidget ??
            const Center(
              child: Text('Loading Widget'),
            );
      },
      errorWidget: (_, __, error) {
        return errorWidget ??
            Center(
              child: Text('Error Text ${error.toString()}'),
            );
      },
    );
  }
}
