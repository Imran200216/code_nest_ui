import 'package:flutter/material.dart';

class CodeNestTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String hint;
  final TextInputType keyboardType;
  final int maxLines;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final bool enabled;
  final IconData prefixIcon;
  final List<String>? autoFillHints;
  final String? labelText;
  final Color? primaryColor;
  final Color? hintColor;
  final Color? textColor;
  final Color? errorColor;
  final BorderRadius? borderRadius;
  final EdgeInsets? contentPadding;
  final Color? prefixIconColor;
  final double? prefixIconSize;
  final TextStyle? inputStyle;
  final TextStyle? hintStyle;
  final TextStyle? errorStyle;
  final TextStyle? labelStyle;

  const CodeNestTextFormField({
    super.key,
    this.controller,
    required this.hint,
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
    this.validator,
    this.onChanged,
    this.enabled = true,
    required this.prefixIcon,
    this.autoFillHints,
    this.labelText,
    this.primaryColor = const Color(0xFF4A90E2),
    this.hintColor = const Color(0xFF9E9E9E),
    this.textColor = const Color(0xFF212121),
    this.errorColor = const Color(0xFFD32F2F),
    this.borderRadius,
    this.contentPadding,
    this.prefixIconColor,
    this.prefixIconSize,
    this.inputStyle,
    this.hintStyle,
    this.errorStyle,
    this.labelStyle,
  });

  @override
  Widget build(BuildContext context) {
    final labelTextStyle =
        labelStyle ??
        TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: textColor);

    final inputTextStyle =
        inputStyle ??
        TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: textColor);

    final hintTextStyle =
        hintStyle ??
        TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: hintColor);

    final errorTextStyle =
        errorStyle ??
        TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: errorColor);

    final border = OutlineInputBorder(
      borderRadius: borderRadius ?? BorderRadius.circular(10),
      borderSide: BorderSide(color: hintColor!),
    );

    final focusedBorder = OutlineInputBorder(
      borderRadius: borderRadius ?? BorderRadius.circular(10),
      borderSide: BorderSide(color: primaryColor!, width: 1.2),
    );

    final errorBorder = OutlineInputBorder(
      borderRadius: borderRadius ?? BorderRadius.circular(10),
      borderSide: BorderSide(color: errorColor!, width: 1.2),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null) ...[
          Text(labelText!, style: labelTextStyle),
          const SizedBox(height: 6),
        ],
        TextFormField(
          autofillHints: autoFillHints,
          style: inputTextStyle,
          cursorColor: primaryColor,
          controller: controller,
          keyboardType: keyboardType,
          maxLines: maxLines,
          enabled: enabled,
          validator: validator,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: hintTextStyle,
            errorStyle: errorTextStyle,
            prefixIcon: Icon(
              prefixIcon,
              color: prefixIconColor,
              size: prefixIconSize,
            ),
            border: border,
            enabledBorder: border,
            focusedBorder: focusedBorder,
            errorBorder: errorBorder,
            focusedErrorBorder: errorBorder,
            contentPadding:
                contentPadding ??
                const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
        ),
      ],
    );
  }
}
