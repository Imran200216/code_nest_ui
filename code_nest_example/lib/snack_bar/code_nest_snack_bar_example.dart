import 'package:code_nest_ui/code_nest_ui.dart';
import 'package:flutter/material.dart';

class CodeNestSnackBarExample extends StatelessWidget {
  const CodeNestSnackBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            spacing: 30,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Failure Snack bar
              SizedBox(
                width: double.infinity,
                child: CodeNestFilledBtn(
                  label: "Failure Snack",
                  backgroundColor: Colors.red,
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      CodeNestFailureSnackBar(
                        closeIconColor: Colors.white,
                        message: "Something went wrong",
                        backgroundColor: Colors.red.shade500,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                        leading: Icon(Icons.error, color: Colors.white),
                      ),
                    );
                  },
                ),
              ),

              // Success Snack bar
              SizedBox(
                width: double.infinity,
                child: CodeNestFilledBtn(
                  label: "Success Snack",
                  backgroundColor: Colors.green,
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      CodeNestSuccessSnackBar(
                        closeIconColor: Colors.white,
                        message: "Something went wrong",
                        backgroundColor: Colors.green.shade500,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                        leading: Icon(Icons.error, color: Colors.white),
                      ),
                    );
                  },
                ),
              ),

              // Success Snack bar
              SizedBox(
                width: double.infinity,
                child: CodeNestFilledBtn(
                  foregroundColor: Colors.black,
                  label: "Warning Snack",
                  backgroundColor: Colors.amber,
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      CodeNestWarningSnackBar(
                        closeIconColor: Colors.white,
                        message: "Something went wrong",
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
