import 'package:code_nest_ui/code_nest_ui.dart';
import 'package:flutter/material.dart';

class CodeNestSwitchExample extends StatefulWidget {
  const CodeNestSwitchExample({super.key});

  @override
  State<CodeNestSwitchExample> createState() => _CodeNestSwitchExampleState();
}

class _CodeNestSwitchExampleState extends State<CodeNestSwitchExample> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CodeNest Switch Example')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CodeNestAdaptiveSwitch(
              value: _isDarkMode,
              onChanged: (val) => setState(() => _isDarkMode = val),
              activeColor: Colors.deepPurple,
              trackColor: Colors.deepPurple.shade100,
              inactiveThumbColor: Colors.grey,
              thumbColor: Colors.white,
              padding: const EdgeInsets.all(2),
              scale: 1.3,
            ),
          ],
        ),
      ),
    );
  }
}
