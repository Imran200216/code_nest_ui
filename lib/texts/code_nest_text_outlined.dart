import 'package:flutter/material.dart';

class CodeNestTextOutlined extends StatelessWidget {
  final String text;

  // Basic style options
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final FontStyle? fontStyle;
  final String? fontFamily;

  // Text layout
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final double? letterSpacing;
  final double? height;

  // Decorations
  final TextDecoration? decoration;
  final Color? decorationColor;
  final TextDecorationStyle? decorationStyle;

  // Stroke specific
  final Color strokeColor;
  final double strokeWidth;

  // Optional full TextStyle override
  final TextStyle? styleOverride;

  const CodeNestTextOutlined(
    this.text, {
    super.key,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.fontStyle,
    this.fontFamily,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.letterSpacing,
    this.height,
    this.decoration,
    this.decorationColor,
    this.decorationStyle,
    this.strokeColor = Colors.black,
    this.strokeWidth = 1.0,
    this.styleOverride,
  });

  @override
  Widget build(BuildContext context) {
    final defaultStyle = TextStyle(
      fontSize: fontSize ?? 14,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? Colors.black,
      fontStyle: fontStyle,
      fontFamily: fontFamily,
      letterSpacing: letterSpacing,
      height: height,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
    );

    final strokeStyle = (styleOverride ?? defaultStyle).copyWith(
      foreground: Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth
        ..color = strokeColor,
    );

    return Stack(
      children: [
        Text(
          text,
          maxLines: maxLines,
          overflow: overflow ?? TextOverflow.ellipsis,
          textAlign: textAlign,
          style: strokeStyle,
        ),
        Text(
          text,
          maxLines: maxLines,
          overflow: overflow ?? TextOverflow.ellipsis,
          textAlign: textAlign,
          style: styleOverride ?? defaultStyle,
        ),
      ],
    );
  }
}
