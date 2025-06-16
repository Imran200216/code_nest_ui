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
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Error Logger
              SizedBox(
                width: double.infinity,
                child: CodeNestFilledBtn(
                  label: "Press Error Logger",
                  onPressed: () {
                    CodeNestLogger.logError("hi Error");
                  },
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
              ),

              // Info Logger
              SizedBox(
                width: double.infinity,
                child: CodeNestFilledBtn(
                  label: "Press Info Logger",
                  onPressed: () {
                    CodeNestLogger.logInfo("hi info");
                  },
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
              ),

              // Response Logger
              SizedBox(
                width: double.infinity,
                child: CodeNestFilledBtn(
                  label: "Press Response Logger",
                  onPressed: () {
                    CodeNestLogger.logResponse("hi response");
                  },
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
              ),

              // Warning Logger
              SizedBox(
                width: double.infinity,
                child: CodeNestFilledBtn(
                  label: "Press Warning Logger",
                  onPressed: () {
                    CodeNestLogger.logWarning("hi warning");
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
