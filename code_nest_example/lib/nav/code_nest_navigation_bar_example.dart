import 'package:code_nest_ui/code_nest_ui.dart';
import 'package:flutter/material.dart';

class CodeNestNavigationBarExample extends StatefulWidget {
  const CodeNestNavigationBarExample({super.key});

  @override
  State<CodeNestNavigationBarExample> createState() =>
      _CodeNestNavigationBarExampleState();
}

class _CodeNestNavigationBarExampleState
    extends State<CodeNestNavigationBarExample> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    Center(child: Text("Home")),
    Center(child: Text("Search")),
    Center(child: Text("Add")),
    Center(child: Text("Settings")),
  ];

  final List<CodeNestNavigationBarItem> _navItems = const [
    CodeNestNavigationBarItem(icon: Icons.home, label: 'Home'),
    CodeNestNavigationBarItem(icon: Icons.search, label: 'Search'),
    CodeNestNavigationBarItem(icon: Icons.add, label: 'Add'),
    CodeNestNavigationBarItem(icon: Icons.settings, label: 'Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CodeNest Navigation Example")),
      body: _pages[_selectedIndex],
      bottomNavigationBar: CodeNestNavigationBar(
        items: _navItems,
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
        backgroundColor: Colors.white,
        elevation: 2,
      ),
    );
  }
}
