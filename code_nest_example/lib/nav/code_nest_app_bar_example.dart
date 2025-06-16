import 'package:code_nest_ui/code_nest_ui.dart';
import 'package:flutter/material.dart';

class CodeNestAppBarExample extends StatelessWidget {
  const CodeNestAppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar 
      appBar: CodeNestAppBar(
        elevation: 2.0,
        title: "AppBar",
        backgroundColor: Colors.red,
        actions: [Icon(Icons.share)],
        centerTitle: false,
        titleTextStyle: TextStyle(color: Colors.white),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      ),
    );
  }
}
