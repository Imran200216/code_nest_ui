import 'package:code_nest_ui/code_nest_ui.dart';
import 'package:flutter/material.dart';

class CodeNestListTilesExample extends StatefulWidget {
  const CodeNestListTilesExample({super.key});

  @override
  State<CodeNestListTilesExample> createState() =>
      _CodeNestListTilesExampleState();
}

class _CodeNestListTilesExampleState extends State<CodeNestListTilesExample> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CodeNestCheckBoxListTile(
              onChanged: (val) => setState(() => isChecked = val),
              value: isChecked,
              title: 'Enable Notifications',
              subtitle: 'Receive updates on your email and phone',
              checkboxLeading: true,
              titleStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              subtitleStyle: const TextStyle(fontSize: 14, color: Colors.grey),
              isThreeLine: false,
              dense: true,
              activeColor: Colors.green,
              checkColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
