import 'package:flutter/material.dart';

class CodeNestNavigationRail extends StatefulWidget {
  final List<CodeNestRailItem> items;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;
  final Color? selectedIconColor;
  final Color? unselectedIconColor;
  final TextStyle? selectedLabelTextStyle;
  final TextStyle? unselectedLabelTextStyle;

  const CodeNestNavigationRail({
    super.key,
    required this.items,
    required this.selectedIndex,
    required this.onDestinationSelected,
    this.selectedIconColor,
    this.unselectedIconColor,
    this.selectedLabelTextStyle,
    this.unselectedLabelTextStyle,
  });

  @override
  State<CodeNestNavigationRail> createState() => _CodeNestNavigationRailState();
}

class _CodeNestNavigationRailState extends State<CodeNestNavigationRail> {
  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: widget.selectedIndex,
      onDestinationSelected: widget.onDestinationSelected,
      labelType: NavigationRailLabelType.all,
      selectedIconTheme: IconThemeData(
        color:
            widget.selectedIconColor ?? Theme.of(context).colorScheme.primary,
      ),
      unselectedIconTheme: IconThemeData(
        color: widget.unselectedIconColor ?? Colors.grey,
      ),
      destinations: widget.items.map((item) {
        return NavigationRailDestination(
          icon: Icon(item.icon),
          selectedIcon: Icon(item.icon),
          label: Text(
            item.label,
            style: widget.selectedIndex == widget.items.indexOf(item)
                ? widget.selectedLabelTextStyle
                : widget.unselectedLabelTextStyle,
          ),
        );
      }).toList(),
    );
  }
}

class CodeNestRailItem {
  final IconData icon;
  final String label;

  CodeNestRailItem({required this.icon, required this.label});
}
