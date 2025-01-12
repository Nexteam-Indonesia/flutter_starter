import 'package:cached_network_image/cached_network_image.dart';
import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'empty_image.dart';
import 'image_generator.dart';

class UserCircleAvatar extends StatelessWidget {
  const UserCircleAvatar({
    super.key,
    required this.image,
    this.baseUrl,
    this.size,
    required this.name,
  });

  final String? image;
  final String? baseUrl;
  final double? size;
  final String name;

  @override
  Widget build(BuildContext context) {
    var imgGenerate = ImageGenerator(
      name: name,
      size: size ?? 50,
    );
    if (image == null || image == '' || image == 'default.png') {
      return imgGenerate;
    }
    String url = image!;
    if (!image!.contains('://')) {
      var storage = ((Flavor.I.getString(Keys.apiUrl) != null)
          ? ('${Flavor.I.getString(Keys.apiUrl)!}storage/')
          : "-");
      if (storage == "-") {
        return imgGenerate;
      }
      url = baseUrl ?? storage;
      url += image!;
    } else {
      url = '${(image ?? '').split('://').first}://${(image ?? '').split('://').last}';
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
