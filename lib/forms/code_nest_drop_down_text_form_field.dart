import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class CodeNestDropdownTextFormField<T> extends StatelessWidget {
  final List<T> items;
  final String? selectedValue;
  final String hintText;
  final void Function(T?)? onChanged;
  final void Function(T?)? onSaved;
  final String? Function(T?)? validator;
  final TextStyle? hintStyle;
  final TextStyle? itemStyle;
  final InputDecoration? decoration;
  final ButtonStyleData buttonStyleData;
  final IconStyleData iconStyleData;
  final DropdownStyleData? dropdownStyleData;
  final MenuItemStyleData menuItemStyleData;
  final String Function(T) itemToString;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? contentPadding;

  const CodeNestDropdownTextFormField({
    super.key,
    required this.items,
    this.selectedValue,
    required this.hintText,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.hintStyle = const TextStyle(fontSize: 14),
    this.itemStyle = const TextStyle(fontSize: 14),
    this.decoration,
    this.buttonStyleData = const ButtonStyleData(
      padding: EdgeInsets.only(right: 8),
    ),
    this.iconStyleData = const IconStyleData(
      icon: Icon(Icons.arrow_drop_down, color: Colors.black45),
      iconSize: 24,
    ),
    this.dropdownStyleData,
    this.menuItemStyleData = const MenuItemStyleData(
      padding: EdgeInsets.symmetric(horizontal: 16),
    ),
    required this.itemToString,
    this.borderRadius,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<T>(
      isExpanded: true,
      decoration:
          decoration ??
          InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 16),
            border: OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(15),
            ),
          ),
      hint: Text(hintText, style: hintStyle),
      items: items
          .map(
            (item) => DropdownMenuItem<T>(
              value: item,
              child: Text(itemToString(item), style: itemStyle),
            ),
          )
          .toList(),
      value: selectedValue != null
          ? items.firstWhere(
              (element) => itemToString(element) == selectedValue,
              orElse: () => items.isNotEmpty ? items.first : null as T,
            )
          : null,
      validator: validator,
      onChanged: onChanged,
      onSaved: onSaved,
      buttonStyleData: buttonStyleData,
      iconStyleData: iconStyleData,
      dropdownStyleData:
          dropdownStyleData ??
          DropdownStyleData(
            decoration: BoxDecoration(
              borderRadius: borderRadius ?? BorderRadius.circular(15),
            ),
          ),
      menuItemStyleData: menuItemStyleData,
    );
  }
}

// Example usage for strings
class CodeNestStringDropdownTextFormField
    extends CodeNestDropdownTextFormField<String> {
  CodeNestStringDropdownTextFormField({
    super.key,
    required super.items,
    super.selectedValue,
    required super.hintText,
    super.onChanged,
    super.onSaved,
    super.validator,
    super.hintStyle,
    super.itemStyle,
    super.decoration,
    super.buttonStyleData,
    super.iconStyleData,
    super.dropdownStyleData,
    super.menuItemStyleData,
    super.borderRadius,
    super.contentPadding,
  }) : super(itemToString: (String item) => item);
}
