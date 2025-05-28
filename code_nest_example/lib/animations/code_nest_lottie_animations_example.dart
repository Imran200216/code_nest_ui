import 'package:code_nest_ui/animations/code_nest_animations_exports.dart';
import 'package:flutter/material.dart';

class CodeNestLottieAnimationsExample extends StatelessWidget {
  const CodeNestLottieAnimationsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Lottie Asset Animation
          CodeNestLottieAssetAnimation(assetPath: ""),

          // Lottie Network Animation
          CodeNestLottieNetworkAnimation(url: ""),
        ],
      ),
    );
  }
}
