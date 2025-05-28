import 'package:flutter/material.dart';

class CodeNestOutlinedBtn extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool isLoading;

  // Style customization
  final Color? borderColor;
  final Color? foregroundColor;
  final TextStyle? textStyle;
  final double borderRadius;
  final double borderWidth;
  final EdgeInsetsGeometry padding;

  const CodeNestOutlinedBtn({
    super.key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
    this.borderColor,
    this.foregroundColor,
    this.textStyle,
    this.borderRadius = 12.0,
    this.borderWidth = 1.5,
    this.padding = const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
  });

  @override
  Widget build(BuildContext context) {
    final effectiveForegroundColor =
        foregroundColor ?? Theme.of(context).colorScheme.primary;
    final effectiveBorderColor =
        borderColor ?? Theme.of(context).colorScheme.primary;

    return OutlinedButton(
      onPressed: isLoading ? null : onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(padding),
        foregroundColor: MaterialStateProperty.all(effectiveForegroundColor),
        side: MaterialStateProperty.all(
          BorderSide(color: effectiveBorderColor, width: borderWidth),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        textStyle: MaterialStateProperty.all(
          textStyle ??
              const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      child: isLoading
          ? SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: effectiveForegroundColor,
              ),
            )
          : Text(label),
    );
  }
}
