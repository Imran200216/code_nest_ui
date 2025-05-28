import 'package:flutter/material.dart';

enum DividerStyle { solid, dashed, dotted }

class CodeNestDivider extends StatelessWidget {
  final Axis direction;
  final double thickness;
  final double length;
  final Color? color;
  final double indent;
  final double endIndent;
  final DividerStyle style;

  const CodeNestDivider({
    super.key,
    this.direction = Axis.horizontal,
    this.thickness = 1.0,
    this.length = double.infinity,
    this.color,
    this.indent = 0.0,
    this.endIndent = 0.0,
    this.style = DividerStyle.solid,
  });

  @override
  Widget build(BuildContext context) {
    final dividerColor = color ?? Theme.of(context).dividerColor;

    if (style == DividerStyle.solid) {
      return direction == Axis.horizontal
          ? Divider(
        color: dividerColor,
        thickness: thickness,
        indent: indent,
        endIndent: endIndent,
      )
          : SizedBox(
        height: length,
        child: VerticalDivider(
          color: dividerColor,
          thickness: thickness,
          width: thickness,
          indent: indent,
          endIndent: endIndent,
        ),
      );
    }

    return CustomPaint(
      size: direction == Axis.horizontal
          ? Size(length, thickness)
          : Size(thickness, length),
      painter: _StyledDividerPainter(
        color: dividerColor,
        thickness: thickness,
        style: style,
        isHorizontal: direction == Axis.horizontal,
      ),
    );
  }
}

class _StyledDividerPainter extends CustomPainter {
  final Color color;
  final double thickness;
  final DividerStyle style;
  final bool isHorizontal;

  _StyledDividerPainter({
    required this.color,
    required this.thickness,
    required this.style,
    required this.isHorizontal,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = thickness;

    double dashWidth = style == DividerStyle.dashed ? 8.0 : 2.0;
    double dashSpace = style == DividerStyle.dashed ? 4.0 : 2.0;

    double start = 0;
    final totalLength = isHorizontal ? size.width : size.height;

    while (start < totalLength) {
      if (isHorizontal) {
        canvas.drawLine(
          Offset(start, 0),
          Offset(start + dashWidth, 0),
          paint,
        );
      } else {
        canvas.drawLine(
          Offset(0, start),
          Offset(0, start + dashWidth),
          paint,
        );
      }
      start += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
