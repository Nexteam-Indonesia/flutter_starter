import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/presentation/components/image/image_generator.dart';
import 'package:shimmer/shimmer.dart';

import 'empty_image.dart';

class UserCircleAvatar extends StatelessWidget {
  const UserCircleAvatar({
    Key? key,
    required this.image,
    this.baseUrl,
    this.size,
    required this.name,
  }) : super(key: key);

  final String? image;
  final String? baseUrl;
  final double? size;
  final String name;

  @override
  Widget build(BuildContext context) {
    if (image == null || image == '' || image == 'default.png') {
      return ImageGenerator(
        name: name,
        size: size ?? 50,
      );
    }
    String url = image!;
    if (!image!.contains('://')) {
      url = baseUrl ?? 'https://api-kendali.eluxdev.space/storage/';
      url += image!;
    } else {
      url =
          '${(image ?? '').split('://').first}://${(image ?? '').split('://').last}';
    }
    return CachedNetworkImage(
      imageUrl: url,
      placeholder: (context, url) => Shimmer.fromColors(
        baseColor: Colors.grey[200]!,
        highlightColor: Colors.white,
        child: EmptyImage(
          size: size,
        ),
      ),
      width: size,
      height: size,
      errorWidget: (context, url, error) => ImageGenerator(
        name: name,
        size: size ?? 50,
      ),
      imageBuilder: (context, imageProvider) {
        return CircleAvatar(
          radius: size,
          backgroundImage: imageProvider,
        );
      },
    );
  }
}
