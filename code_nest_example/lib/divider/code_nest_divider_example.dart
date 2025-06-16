import 'package:code_nest_ui/code_nest_ui.dart';
import 'package:flutter/material.dart';

class CodeNestDividerExample extends StatelessWidget {
  const CodeNestDividerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 20,
          children: [
            // Solid horizontal divider
            const CodeNestDivider(
              direction: Axis.horizontal,
              length: 50,
              thickness: 1.5,
            ),

            // Dashed vertical divider
            CodeNestDivider(
              direction: Axis.vertical,
              length: 50,
              thickness: 1.5,
              style: DividerStyle.dashed,
            ),

            // Dotted horizontal divider
            CodeNestDivider(style: DividerStyle.dotted, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
