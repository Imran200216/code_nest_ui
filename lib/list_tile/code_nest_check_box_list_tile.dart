import 'package:flutter/material.dart';

class CodeNestCheckBoxListTile extends StatelessWidget {
  final bool? value;
  final ValueChanged<bool?>? onChanged;
  final String title;
  final String? subtitle;
  final bool checkboxLeading;
  final Color? activeColor;
  final Color? checkColor;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final bool isThreeLine;
  final bool enabled;
  final bool dense;

  const CodeNestCheckBoxListTile({
    super.key,
    required this.value,
    required this.onChanged,
    required this.title,
    this.subtitle,
    this.checkboxLeading = false,
    this.activeColor,
    this.checkColor,
    this.contentPadding,
    this.titleStyle,
    this.subtitleStyle,
    this.isThreeLine = false,
    this.enabled = true,
    this.dense = false,
  });

  @override
  Widget build(BuildContext context) {
    final checkbox = Checkbox(
      value: value ?? false,
      onChanged: enabled ? onChanged : null,
      activeColor: activeColor,
      checkColor: checkColor,
    );

    return ListTile(
      contentPadding: contentPadding,
      enabled: enabled,
      dense: dense,
      isThreeLine: isThreeLine,
      leading: checkboxLeading ? checkbox : null,
      trailing: !checkboxLeading ? checkbox : null,
      title: Text(title, style: titleStyle),
      subtitle: subtitle != null ? Text(subtitle!, style: subtitleStyle) : null,
      onTap: enabled && onChanged != null
          ? () => onChanged?.call(!(value ?? false))
          : null,
    );
  }
}
