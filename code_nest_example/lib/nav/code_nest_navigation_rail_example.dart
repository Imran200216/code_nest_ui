import 'package:code_nest_ui/code_nest_ui.dart';
import 'package:flutter/material.dart';

class CodeNestNavigationRailExample extends StatefulWidget {
  const CodeNestNavigationRailExample({super.key});

  @override
  State<CodeNestNavigationRailExample> createState() =>
      _CodeNestNavigationRailExampleState();
}

class _CodeNestNavigationRailExampleState
    extends State<CodeNestNavigationRailExample> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    Center(child: Text('Dashboard')),
    Center(child: Text('Messages')),
    Center(child: Text('Settings')),
  ];

  final List<CodeNestRailItem> _railItems = [
    CodeNestRailItem(icon: Icons.dashboard, label: 'Dashboard'),
    CodeNestRailItem(icon: Icons.message, label: 'Messages'),
    CodeNestRailItem(icon: Icons.settings, label: 'Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          CodeNestNavigationRail(
            items: _railItems,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            selectedIconColor: Colors.blue,
            unselectedIconColor: Colors.grey,
            selectedLabelTextStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            unselectedLabelTextStyle: const TextStyle(color: Colors.grey),
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(child: _pages[_selectedIndex]),
        ],
      ),
    );
  }
}
