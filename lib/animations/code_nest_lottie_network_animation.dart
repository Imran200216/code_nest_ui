import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CodeNestLottieNetworkAnimation extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;
  final BoxFit fit;
  final bool repeat;
  final bool reverse;
  final bool animate;

  const CodeNestLottieNetworkAnimation({
    super.key,
    required this.url,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.repeat = true,
    this.reverse = false,
    this.animate = true,
  });

  @override
  Widget build(BuildContext context) {
    return Lottie.network(
      url,
      width: width,
      height: height,
      fit: fit,
      repeat: repeat,
      reverse: reverse,
      animate: animate,
    );
  }
}
