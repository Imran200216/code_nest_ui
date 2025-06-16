import 'package:code_nest_ui/code_nest_ui.dart';
import 'package:flutter/material.dart';

class CodeNestLoaderExample extends StatelessWidget {
  const CodeNestLoaderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Circular Loader
            CodeNestCircularProgressLoader(
              backgroundColor: Colors.red,
              size: 30,
              strokeCap: StrokeCap.round,
              strokeWidth: 30,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
