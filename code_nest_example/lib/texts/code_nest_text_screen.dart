import 'package:code_nest_ui/code_nest_ui.dart';
import 'package:flutter/material.dart';

class CodeNestTextScreen extends StatelessWidget {
  const CodeNestTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          spacing: 30,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Code Nest Text
            CodeNestText(
              "Hi Flutter",
              fontSize: 30,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              decorationColor: Colors.blue,
              decorationStyle: TextDecorationStyle.dotted,
            ),

            // Code Nest Text Rich
            CodeNestRichText(
              children: [
                TextSpan(
                  text: "Hi ",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                TextSpan(
                  text: "there, ",
                  style: TextStyle(
                    color: Colors.blue,
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                  ),
                ),
                TextSpan(
                  text: "welcome to CodeNest!",
                  style: TextStyle(
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                    fontSize: 16,
                  ),
                ),
              ],
            ),

            // Code Nest Rich Outlined Text
            CodeNestTextOutlined(
              "hi Fluffy",
              fontSize: 30,
              strokeWidth: 4,
              strokeColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
