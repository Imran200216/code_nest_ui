import 'package:flutter/material.dart';

class CodeNestNavigationBar extends StatelessWidget {
  final List<CodeNestNavigationBarItem> items;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;
  final Color? selectedIconColor;
  final Color? unselectedIconColor;
  final TextStyle? selectedLabelTextStyle;
  final TextStyle? unselectedLabelTextStyle;
  final Color? backgroundColor;
  final double? elevation;
  final NavigationDestinationLabelBehavior? labelBehavior;

  const CodeNestNavigationBar({
    super.key,
    required this.items,
    required this.selectedIndex,
    required this.onDestinationSelected,
    this.selectedIconColor,
    this.unselectedIconColor,
    this.selectedLabelTextStyle,
    this.unselectedLabelTextStyle,
    this.backgroundColor,
    this.elevation,
    this.labelBehavior,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
      backgroundColor: backgroundColor,
      elevation: elevation,
      labelBehavior: labelBehavior ?? NavigationDestinationLabelBehavior.alwaysShow,
      labelTextStyle: MaterialStateProperty.resolveWith<TextStyle?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return selectedLabelTextStyle;
          }
          return unselectedLabelTextStyle;
        },
      ),
      destinations: items.asMap().entries.map((entry) {
        final index = entry.key;
        final item = entry.value;
        final isSelected = selectedIndex == index;

        return NavigationDestination(
          icon: Icon(
            item.icon,
            color: isSelected ? selectedIconColor : unselectedIconColor,
          ),
          label: item.label,
        );
      }).toList(),
    );
  }
}

class CodeNestNavigationBarItem {
  final IconData icon;
  final String label;

  const CodeNestNavigationBarItem({
    required this.icon,
    required this.label,
  });
}
