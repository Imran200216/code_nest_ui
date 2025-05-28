import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CodeNestCachedNetworkImage extends StatelessWidget {
  final String imageUrl;
  final String placeholderAssetPath;
  final String errorAssetPath;
  final double? width;
  final double? height;

  // Separate BoxFit for main image, placeholder and error widgets
  final BoxFit imageFit;
  final BoxFit placeholderFit;
  final BoxFit errorFit;

  const CodeNestCachedNetworkImage({
    super.key,
    required this.imageUrl,
    required this.placeholderAssetPath,
    required this.errorAssetPath,
    this.width,
    this.height,
    this.imageFit = BoxFit.cover,
    this.placeholderFit = BoxFit.cover,
    this.errorFit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      fit: imageFit,
      placeholder: (context, url) => Image.asset(
        placeholderAssetPath,
        width: width,
        height: height,
        fit: placeholderFit,
      ),
      errorWidget: (context, url, error) => Image.asset(
        errorAssetPath,
        width: width,
        height: height,
        fit: errorFit,
      ),
    );
  }
}
