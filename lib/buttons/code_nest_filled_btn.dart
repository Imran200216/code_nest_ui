import 'package:flutter/material.dart';

// Updated Filled Button without icon
class CodeNestFilledBtn extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool isLoading;

  // Style customization
  final Color? backgroundColor;
  final Color? foregroundColor;
  final TextStyle? textStyle;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  const CodeNestFilledBtn({
    super.key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
    this.backgroundColor,
    this.foregroundColor,
    this.textStyle,
    this.borderRadius = 12.0,
    this.padding = const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
  });

  @override
  Widget build(BuildContext context) {
    final effectiveForegroundColor = foregroundColor ?? Colors.white;
    final effectiveBackgroundColor =
        backgroundColor ?? Theme.of(context).colorScheme.primary;

    return FilledButton(
      onPressed: isLoading ? null : onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(padding),
        backgroundColor: MaterialStateProperty.all(effectiveBackgroundColor),
        foregroundColor: MaterialStateProperty.all(effectiveForegroundColor),
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
