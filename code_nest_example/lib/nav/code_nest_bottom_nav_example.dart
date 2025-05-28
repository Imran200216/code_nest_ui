import 'package:code_nest_ui/code_nest_ui.dart';
import 'package:flutter/material.dart';

class CodeNestBottomNavExample extends StatefulWidget {
  const CodeNestBottomNavExample({super.key});

  @override
  State<CodeNestBottomNavExample> createState() =>
      _CodeNestBottomNavExampleState();
}

class _CodeNestBottomNavExampleState extends State<CodeNestBottomNavExample> {
  int _currentIndex = 1;

  final List<Widget> _screens = const [
    Center(child: Text('Home Screen')),
    Center(child: Text('Messages Screen')),
    Center(child: Text('Profile Screen')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CodeNestBottomNav(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
        selectedFontSize: 14,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.shifting,
      ),
    );
  }
}
