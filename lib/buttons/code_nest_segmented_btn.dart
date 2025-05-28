import 'package:flutter/material.dart';

class CodeNestSegmentedBtn<T> extends StatelessWidget {
  final List<ButtonSegment<T>> segments;
  final T selected;
  final ValueChanged<T> onSelectionChanged;
  final bool multiSelection;
  final Color? selectedColor;
  final Color? unselectedColor;
  final Color? foregroundColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  const CodeNestSegmentedBtn({
    super.key,
    required this.segments,
    required this.selected,
    required this.onSelectionChanged,
    this.multiSelection = false,
    this.selectedColor,
    this.unselectedColor,
    this.foregroundColor,
    this.borderRadius = 12.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
  });

  @override
  Widget build(BuildContext context) {
    final effectiveSelectedColor =
        selectedColor ?? Theme.of(context).colorScheme.primary;
    final effectiveForegroundColor =
        foregroundColor ?? Theme.of(context).colorScheme.onPrimary;

    return SegmentedButton<T>(
      segments: segments,
      selected: {selected},
      onSelectionChanged: (newSelection) {
        if (newSelection.isNotEmpty) {
          onSelectionChanged(newSelection.first);
        }
      },
      multiSelectionEnabled: multiSelection,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(padding),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return effectiveSelectedColor;
          }
          return unselectedColor ?? Colors.transparent;
        }),
        foregroundColor: MaterialStateProperty.all(effectiveForegroundColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}
