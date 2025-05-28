import 'package:flutter/material.dart';
import 'package:code_nest_ui/code_nest_ui.dart';

class CodeNestTabBarExample extends StatefulWidget {
  const CodeNestTabBarExample({super.key});

  @override
  State<CodeNestTabBarExample> createState() => _CodeNestTabBarExampleState();
}

class _CodeNestTabBarExampleState extends State<CodeNestTabBarExample>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<CodeNestTabBarItem> _tabs = const [
    CodeNestTabBarItem(label: 'Home', icon: Icons.home),
    CodeNestTabBarItem(label: 'Profile', icon: Icons.person),
    CodeNestTabBarItem(label: 'Settings', icon: Icons.settings),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CodeNestTabBar(
          items: _tabs,
          controller: _tabController,
          indicatorColor: Colors.blue,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
          backgroundColor: Colors.white,
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            Center(child: Text('Home Tab')),
            Center(child: Text('Profile Tab')),
            Center(child: Text('Settings Tab')),
          ],
        ),
      ),
    );
  }
}
