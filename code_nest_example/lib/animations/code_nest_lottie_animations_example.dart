import 'package:code_nest_ui/animations/code_nest_animations_exports.dart';
import 'package:flutter/material.dart';

class CodeNestLottieAnimationsExample extends StatelessWidget {
  const CodeNestLottieAnimationsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 🧩 Lottie Asset Animation
            CodeNestLottieAssetAnimation(
              key: const ValueKey("lottie_asset"),
              assetPath: "assets/lottie_assets/loading.json",
              animate: true,
              repeat: true,
              reverse: false,
              fit: BoxFit.contain,
              width: 200,
              height: 200,
            ),

            const SizedBox(height: 40),

            // 🌐 Lottie Network Animation
            CodeNestLottieNetworkAnimation(
              key: const ValueKey("lottie_network"),
              url:
              "https://assets7.lottiefiles.com/packages/lf20_vfgiomns.json", // Example URL
              animate: true,
              repeat: true,
              reverse: false,
              fit: BoxFit.contain,
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
