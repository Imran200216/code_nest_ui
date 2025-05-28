import 'package:flutter/material.dart';

class CodeNestMultiLineTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String hint;
  final String? labelText;
  final IconData? prefixIcon;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final bool enabled;
  final int maxLines;
  final Color? primaryColor;
  final Color? hintColor;
  final Color? textColor;
  final Color? errorColor;
  final BorderRadius borderRadius;
  final EdgeInsets? contentPadding;

  const CodeNestMultiLineTextFormField({
    super.key,
    this.controller,
    required this.hint,
    this.labelText,
    this.prefixIcon,
    this.validator,
    this.onChanged,
    this.enabled = true,
    this.maxLines = 5,
    this.primaryColor = const Color(0xFF4A90E2),
    this.hintColor = const Color(0xFF9E9E9E),
    this.textColor = const Color(0xFF212121),
    this.errorColor = const Color(0xFFD32F2F),
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    final labelStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: textColor,
    );

    final inputStyle = TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      color: textColor,
    );

    final hintStyle = TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: hintColor,
    );

    final errorStyle = TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: errorColor,
    );

    OutlineInputBorder customBorder(Color borderColor, {double width = 1}) {
      return OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: BorderSide(color: borderColor, width: width),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null) ...[
          Text(labelText!, style: labelStyle),
          const SizedBox(height: 6),
        ],
        TextFormField(
          controller: controller,
          style: inputStyle,
          cursorColor: primaryColor,
          maxLines: maxLines,
          enabled: enabled,
          validator: validator,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: hintStyle,
            errorStyle: errorStyle,
            prefixIcon: prefixIcon != null
                ? Icon(prefixIcon, color: hintColor)
                : null,
            border: customBorder(hintColor!),
            enabledBorder: customBorder(hintColor!),
            focusedBorder: customBorder(primaryColor!, width: 1.2),
            errorBorder: customBorder(errorColor!, width: 1.2),
            focusedErrorBorder: customBorder(errorColor!, width: 1.2),
            contentPadding:
                contentPadding ??
                EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
      ],
    );
  }
}
