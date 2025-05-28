import 'package:flutter/material.dart';

class CodeNestTextBtn extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool isLoading;

  // Style customization
  final Color? foregroundColor;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry padding;

  const CodeNestTextBtn({
    super.key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
    this.foregroundColor,
    this.textStyle,
    this.padding = const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
  });

  @override
  Widget build(BuildContext context) {
    final effectiveForegroundColor =
        foregroundColor ?? Theme.of(context).colorScheme.primary;

    return TextButton(
      onPressed: isLoading ? null : onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(padding),
        foregroundColor: MaterialStateProperty.all(effectiveForegroundColor),
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
