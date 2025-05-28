import 'package:code_nest_ui/code_nest_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CodeNestButtons extends StatelessWidget {
  const CodeNestButtons({super.key});

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
              // Filled Btn
              SizedBox(
                width: double.infinity,
                child: CodeNestFilledBtn(
                  label: "Press Me",
                  onPressed: () {
                    CodeNestLogger.logInfo("hi logger");
                  },
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
              ),

              // Filled Icon Btn
              SizedBox(
                width: double.infinity,
                child: CodeNestIconFilledBtn(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  label: "Google",
                  icon: SvgPicture.asset(
                    'assets/svg/google.svg',
                    height: 24,
                    width: 24,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),

              // Outlined Btn
              SizedBox(
                width: double.infinity,
                child: CodeNestOutlinedBtn(label: "Google", onPressed: () {}),
              ),

              // Outlined Icon (Icon)
              SizedBox(
                width: double.infinity,
                child: CodeNestIconOutlinedBtn(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
              ),

              // Outlined Icon (SVG)
              SizedBox(
                width: double.infinity,
                child: CodeNestIconOutlinedBtn.svg(
                  assetPath: "assets/svg/google.svg",
                  onPressed: () {},
                ),
              ),

              // Icon Btn (Icon)
              SizedBox(
                width: double.infinity,
                child: CodeNestIconBtn.icon(
                  iconData: Icons.delete,
                  onPressed: () {},
                  backgroundColor: Colors.red,
                ),
              ),

              // Icon Btn (SVG)
              SizedBox(
                width: double.infinity,
                child: CodeNestIconBtn.svg(
                  assetPath: 'assets/svg/google.svg',
                  borderColor: Colors.black,
                  borderWidth: 5,
                  size: 50,
                  onPressed: () {},
                  backgroundColor: Colors.red,
                ),
              ),

              // Segmented Btn
              CodeNestSegmentedBtn<String>(
                segments: const [
                  ButtonSegment(value: 'day', label: Text('Day')),
                  ButtonSegment(value: 'week', label: Text('Week')),
                  ButtonSegment(value: 'month', label: Text('Month')),
                ],
                selected: 'day',
                onSelectionChanged: (value) {
                  print('Selected: $value');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
