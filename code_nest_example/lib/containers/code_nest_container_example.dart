import 'package:code_nest_ui/code_nest_ui.dart';
import 'package:flutter/material.dart';

class CodeNestContainerExample extends StatelessWidget {
  const CodeNestContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Center(
        child: CodeNestContainer(
          margin: const EdgeInsets.all(20),
          height: 150,
          width: 300,
          alignment: Alignment.center,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.blueGrey, width: 1.5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
          color: Colors.white,
          child: const Text(
            "This is a reusable CodeNestContainer",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
