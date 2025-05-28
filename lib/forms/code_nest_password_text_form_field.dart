import 'package:flutter/material.dart';

class CodeNestPasswordTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String hint;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final bool enabled;
  final IconData prefixIcon;
  final String? labelText;
  final Color? primaryColor;
  final Color? hintColor;
  final Color? prefixIconColor;
  final double? prefixIconSize;
  final Color? suffixIconColor;
  final double? suffixIconSize;
  final Color? textColor;
  final Color? errorColor;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? contentPadding;

  final TextStyle? inputStyle;
  final TextStyle? hintStyle;
  final TextStyle? errorStyle;
  final TextStyle? labelStyle;

  const CodeNestPasswordTextFormField({
    super.key,
    this.controller,
    required this.hint,
    this.validator,
    this.onChanged,
    this.enabled = true,
    this.prefixIcon = Icons.lock,
    this.labelText,
    this.primaryColor = const Color(0xFF4A90E2),
    this.hintColor = const Color(0xFF9E9E9E),
    this.textColor = const Color(0xFF212121),
    this.errorColor = const Color(0xFFD32F2F),
    this.borderRadius,
    this.contentPadding,
    this.inputStyle,
    this.hintStyle,
    this.errorStyle,
    this.labelStyle,
    this.prefixIconColor,
    this.suffixIconColor,
    this.prefixIconSize,
    this.suffixIconSize,
  });

  @override
  State<CodeNestPasswordTextFormField> createState() =>
      _CodeNestPasswordTextFormFieldState();
}

class _CodeNestPasswordTextFormFieldState
    extends State<CodeNestPasswordTextFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final labelStyle =
        widget.labelStyle ??
        TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: widget.textColor,
        );

    final inputTextStyle =
        widget.inputStyle ??
        TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: widget.textColor,
        );

    final hintTextStyle =
        widget.hintStyle ??
        TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: widget.hintColor,
        );

    final errorTextStyle =
        widget.errorStyle ??
        TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          color: widget.errorColor,
        );

    final border = OutlineInputBorder(
      borderRadius: widget.borderRadius ?? BorderRadius.circular(10),
      borderSide: BorderSide(color: widget.hintColor!),
    );

    final focusedBorder = OutlineInputBorder(
      borderRadius: widget.borderRadius ?? BorderRadius.circular(10),
      borderSide: BorderSide(color: widget.primaryColor!, width: 1.2),
    );

    final errorBorder = OutlineInputBorder(
      borderRadius: widget.borderRadius ?? BorderRadius.circular(10),
      borderSide: BorderSide(color: widget.errorColor!, width: 1.2),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null) ...[
          Text(widget.labelText!, style: labelStyle),
          const SizedBox(height: 6),
        ],
        TextFormField(
          controller: widget.controller,
          style: inputTextStyle,
          cursorColor: widget.primaryColor,
          enabled: widget.enabled,
          obscureText: _obscureText,
          validator: widget.validator,
          onChanged: widget.onChanged,
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: hintTextStyle,
            errorStyle: errorTextStyle,
            prefixIcon: Icon(
              widget.prefixIcon,
              color: widget.prefixIconColor,
              size: widget.prefixIconSize,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                size: widget.suffixIconSize,
                _obscureText ? Icons.visibility_off : Icons.visibility,
                color: widget.suffixIconColor,
              ),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            ),
            border: border,
            enabledBorder: border,
            focusedBorder: focusedBorder,
            errorBorder: errorBorder,
            focusedErrorBorder: errorBorder,
            contentPadding:
                widget.contentPadding ??
                const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
        ),
      ],
    );
  }
}
