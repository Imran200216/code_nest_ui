import 'package:flutter/material.dart';

class CodeNestTabBar extends StatelessWidget implements PreferredSizeWidget {
  final List<CodeNestTabBarItem> items;
  final TabController controller;
  final Color? indicatorColor;
  final TextStyle? selectedLabelStyle;
  final TextStyle? unselectedLabelStyle;
  final Color? labelColor;
  final Color? unselectedLabelColor;
  final bool isScrollable;
  final Color? backgroundColor;

  const CodeNestTabBar({
    super.key,
    required this.items,
    required this.controller,
    this.indicatorColor,
    this.selectedLabelStyle,
    this.unselectedLabelStyle,
    this.labelColor,
    this.unselectedLabelColor,
    this.isScrollable = false,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor ?? Theme.of(context).appBarTheme.backgroundColor,
      child: TabBar(
        controller: controller,
        isScrollable: isScrollable,
        indicatorColor: indicatorColor ?? Theme.of(context).colorScheme.primary,
        labelColor: labelColor,
        unselectedLabelColor: unselectedLabelColor,
        labelStyle: selectedLabelStyle,
        unselectedLabelStyle: unselectedLabelStyle,
        tabs: items.map((item) {
          return Tab(
            icon: item.icon != null ? Icon(item.icon) : null,
            text: item.label,
          );
        }).toList(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class CodeNestTabBarItem {
  final String label;
  final IconData? icon;

  const CodeNestTabBarItem({required this.label, this.icon});
}
