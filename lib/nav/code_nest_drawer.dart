import 'package:code_nest_ui/images/code_nest_cached_network_image.dart';
import 'package:flutter/material.dart';

class CodeNestDrawer extends StatelessWidget {
  final String userName;
  final String userEmail;
  final String profileImageUrl;
  final String profilePlaceHolderAssetPath;
  final String profileErrorAssetPath;
  final List<CodeNestDrawerItem> items;

  final Widget Function(BuildContext, int)? separatorBuilder;
  final Color headerBackgroundColor;
  final TextStyle? listTileTextStyle;

  // Reusable profile image properties
  final double profileImageHeight;
  final double profileImageWidth;
  final double profileImageRadius;

  const CodeNestDrawer({
    super.key,
    required this.userName,
    required this.userEmail,
    required this.profileImageUrl,
    required this.profilePlaceHolderAssetPath,
    required this.profileErrorAssetPath,
    required this.items,
    this.separatorBuilder,
    this.headerBackgroundColor = const Color(0xFF4A90E2),
    this.listTileTextStyle,
    this.profileImageHeight = 60,
    this.profileImageWidth = 60,
    this.profileImageRadius = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(userName),
            accountEmail: Text(userEmail),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              radius: profileImageRadius,
              child: ClipOval(
                child: CodeNestCachedNetworkImage(
                  imageUrl: profileImageUrl,
                  placeholderAssetPath: profilePlaceHolderAssetPath,
                  errorAssetPath: profileErrorAssetPath,
                  width: profileImageWidth,
                  height: profileImageHeight,
                  imageFit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(color: headerBackgroundColor),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: items.length,
              separatorBuilder:
                  separatorBuilder ?? (_, __) => const Divider(height: 1),
              itemBuilder: (context, index) {
                final item = items[index];
                return ListTile(
                  leading: Icon(item.icon, color: Colors.black87),
                  title: Text(item.title, style: listTileTextStyle),
                  onTap: () {
                    Navigator.pop(context); // Close drawer
                    item.onTap();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CodeNestDrawerItem {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  CodeNestDrawerItem({
    required this.title,
    required this.icon,
    required this.onTap,
  });
}
