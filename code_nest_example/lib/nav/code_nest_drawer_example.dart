import 'package:code_nest_ui/code_nest_ui.dart';
import 'package:flutter/material.dart';

class CodeNestDrawerExample extends StatelessWidget {
  const CodeNestDrawerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CodeNest Drawer Example')),
      // Drawer
      drawer: CodeNestDrawer(
        userName: 'John Doe',
        userEmail: 'johndoe@example.com',
        profileImageUrl: 'https://i.pravatar.cc/300',
        profilePlaceHolderAssetPath: 'assets/images/profile_placeholder.png',
        profileErrorAssetPath: 'assets/images/profile_error.png',
        items: [
          CodeNestDrawerItem(
            title: 'Home',
            icon: Icons.home,
            onTap: () {
              debugPrint('Tapped Home');
            },
          ),
          CodeNestDrawerItem(
            title: 'Settings',
            icon: Icons.settings,
            onTap: () {
              debugPrint('Tapped Settings');
            },
          ),
          CodeNestDrawerItem(
            title: 'Logout',
            icon: Icons.logout,
            onTap: () {
              debugPrint('Tapped Logout');
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('Swipe from the left or tap menu to open drawer.'),
      ),
    );
  }
}
