import 'package:flutter/material.dart';

class CodeNestPasswordTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String hint;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final bool enabled;
  final IconData prefixIcon;
  final String labelText;
  final Color? primaryColor;
  final Color? hintColor;
  final Color? textColor;
  final Color? errorColor;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? contentPadding;

  const CodeNestPasswordTextFormField({
    super.key,
    this.controller,
    required this.hint,
    this.validator,
    this.onChanged,
    this.enabled = true,
    this.prefixIcon = Icons.lock,
    required this.labelText,
    this.primaryColor = const Color(0xFF4A90E2),
    this.hintColor = const Color(0xFF9E9E9E),
    this.textColor = const Color(0xFF212121),
    this.errorColor = const Color(0xFFD32F2F),
    this.borderRadius,
    this.contentPadding,
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
    final labelStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: widget.textColor,
    );

    final inputStyle = TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      color: widget.textColor,
    );

    final hintStyle = TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      color: widget.hintColor,
    );

    final errorStyle = TextStyle(
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
          style: inputStyle,
          cursorColor: widget.primaryColor,
          enabled: widget.enabled,
          obscureText: _obscureText,
          validator: widget.validator,
          onChanged: widget.onChanged,
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: hintStyle,
            errorStyle: errorStyle,
            prefixIcon: Icon(widget.prefixIcon, color: widget.hintColor),
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility_off : Icons.visibility,
                color: widget.hintColor,
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
