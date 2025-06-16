import 'package:code_nest_ui/code_nest_ui.dart';
import 'package:flutter/material.dart';

class CodeNestImagesExample extends StatelessWidget {
  const CodeNestImagesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Assets images
            CodeNestAssetImage(
              assetPath: 'assets/jpg/avatar.jpeg',
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),

            // Network image
            CodeNestNetworkImage(
              imageUrl:
                  "https://w7.pngwing.com/pngs/895/199/png-transparent-spider-man-heroes-download-with-transparent-background-free-thumbnail.png",
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),

            // Svg Image
            CodeNestSvgImage(
              assetPath: "assets/svg/google.svg",
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),

            // Cached Network image
            CodeNestCachedNetworkImage(
              width: 400,
              height: 400,
              imageFit: BoxFit.contain,
              imageUrl:
                  "https://cdn.pixabay.com/photo/2015/10/01/19/05/car-967470_1280.png",
              placeholderAssetPath: "assets/jpg/avatar.jpeg",
              errorAssetPath: "assets/jpg/avatar.jpeg",
            ),
          ],
        ),
      ),
    );
  }
}
