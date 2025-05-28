import 'package:flutter/material.dart';

class CodeNestPickerTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String hint;
  final String? labelText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback onTap;
  final FormFieldValidator<String>? validator;
  final bool enabled;
  final Color? primaryColor;
  final Color? hintColor;
  final Color? textColor;
  final Color? errorColor;
  final BorderRadius borderRadius;
  final EdgeInsets? contentPadding;
  final Color? prefixIconColor;
  final double? prefixIconSize;
  final Color? suffixIconColor;
  final double? suffixIconSize;
  final TextStyle? inputStyle;
  final TextStyle? hintStyle;
  final TextStyle? errorStyle;
  final TextStyle? labelStyle;

  const CodeNestPickerTextFormField({
    super.key,
    this.controller,
    required this.onTap,
    required this.hint,
    this.labelText,
    this.prefixIcon = Icons.calendar_today,
    this.suffixIcon,
    this.validator,
    this.enabled = true,
    this.primaryColor = const Color(0xFF4A90E2),
    this.hintColor = const Color(0xFF9E9E9E),
    this.textColor = const Color(0xFF212121),
    this.errorColor = const Color(0xFFD32F2F),
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    this.contentPadding,
    this.prefixIconColor,
    this.prefixIconSize,
    this.suffixIconColor,
    this.suffixIconSize,
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

    OutlineInputBorder customBorder(Color color, {double width = 1}) {
      return OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: BorderSide(color: color, width: width),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null) ...[
          Text(labelText!, style: labelTextStyle),
          const SizedBox(height: 6),
        ],
        TextFormField(
          controller: controller,
          readOnly: true,
          onTap: enabled ? onTap : null,
          style: inputTextStyle,
          validator: validator,
          cursorColor: primaryColor,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: hintTextStyle,
            errorStyle: errorTextStyle,
            prefixIcon: Icon(
              prefixIcon,
              color: prefixIconColor,
              size: prefixIconSize,
            ),
            suffixIcon: suffixIcon != null
                ? Icon(suffixIcon, color: suffixIconColor, size: suffixIconSize)
                : null,
            // 🔹 Added here
            border: customBorder(hintColor!),
            enabledBorder: customBorder(hintColor!),
            focusedBorder: customBorder(primaryColor!, width: 1.2),
            errorBorder: customBorder(errorColor!, width: 1.2),
            focusedErrorBorder: customBorder(errorColor!, width: 1.2),
            contentPadding:
                contentPadding ??
                const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
        ),
      ],
    );
  }
}
