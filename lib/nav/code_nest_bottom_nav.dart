import 'package:flutter/material.dart';

class CodeNestBottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  final List<BottomNavigationBarItem> items;
  final Color? selectedItemColor;
  final Color? unselectedItemColor;
  final Color? backgroundColor;
  final bool showLabels;
  final BottomNavigationBarType type;
  final TextStyle? selectedLabelStyle;
  final TextStyle? unselectedLabelStyle;
  final double? selectedFontSize;
  final double? unselectedFontSize;
  final bool enableFeedback;

  const CodeNestBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.items,
    this.selectedItemColor,
    this.unselectedItemColor,
    this.backgroundColor,
    this.showLabels = true,
    this.type = BottomNavigationBarType.fixed,
    this.selectedLabelStyle,
    this.unselectedLabelStyle,
    this.selectedFontSize,
    this.unselectedFontSize,
    this.enableFeedback = true,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: items,
      selectedItemColor: selectedItemColor ?? Theme.of(context).primaryColor,
      unselectedItemColor: unselectedItemColor ?? Colors.grey,
      backgroundColor: backgroundColor,
      showSelectedLabels: showLabels,
      showUnselectedLabels: showLabels,
      type: type,
      enableFeedback: enableFeedback,
      selectedLabelStyle: selectedLabelStyle,
      unselectedLabelStyle: unselectedLabelStyle,
      selectedFontSize: selectedFontSize ?? 14,
      unselectedFontSize: unselectedFontSize ?? 12,
    );
  }
}
