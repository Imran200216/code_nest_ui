import 'package:flutter/material.dart';

class CodeNestRichText extends StatelessWidget {
  final List<InlineSpan> children;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;

  const CodeNestRichText({
    super.key,
    required this.children,
    this.textAlign,
    this.overflow,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLines,
      overflow: overflow ?? TextOverflow.clip,
      text: TextSpan(children: children),
    );
  }
}
