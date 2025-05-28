import 'package:code_nest_ui/code_nest_ui.dart';
import 'package:flutter/material.dart';

class CodeNestToolTipScreen extends StatelessWidget {
  const CodeNestToolTipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CodeNestToolTip(
          message: 'Click to perform action',
          decoration: BoxDecoration(
            color: Colors.deepPurple, // 🔹 Background color
            borderRadius: BorderRadius.circular(8), // Optional rounded corners
          ),
          child: Icon(Icons.info, size: 32),
        ),
      ),
    );
  }
}
