import 'package:code_nest_ui/code_nest_ui.dart';
import 'package:flutter/material.dart';

class CodeNestLoggerScreen extends StatelessWidget {
  const CodeNestLoggerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Filled Btn
              SizedBox(
                width: double.infinity,
                child: CodeNestFilledBtn(
                  label: "Press Me",
                  onPressed: () {
                    CodeNestLogger.logError("hi Error");
                  },
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
