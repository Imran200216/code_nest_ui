import 'package:flutter/material.dart';

class CodeNestWarningSnackBar extends SnackBar {
  CodeNestWarningSnackBar({
    super.key,
    Widget? leading,
    required String message,
    Color super.backgroundColor = const Color(0xFFFFA000),
    Color textColor = Colors.black87,
    Color closeIconColor = Colors.black87,
    super.duration,
    String? actionLabel,
    VoidCallback? onActionTap,
    EdgeInsetsGeometry super.padding = const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 12,
    ),
    EdgeInsetsGeometry super.margin = const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 8,
    ),
    BorderRadiusGeometry borderRadius = const BorderRadius.all(
      Radius.circular(8),
    ),
  }) : super(
         behavior: SnackBarBehavior.floating,
         shape: RoundedRectangleBorder(borderRadius: borderRadius),
         content: Builder(
           builder: (context) {
             return Row(
               children: [
                 if (leading != null) ...[leading, const SizedBox(width: 12)],
                 Expanded(
                   child: Text(
                     message,
                     style: TextStyle(
                       color: textColor,
                       fontWeight: FontWeight.w600,
                     ),
                   ),
                 ),
                 if (actionLabel != null && onActionTap != null)
                   TextButton(
                     onPressed: onActionTap,
                     style: TextButton.styleFrom(foregroundColor: textColor),
                     child: Text(actionLabel),
                   ),
                 IconButton(
                   icon: Icon(Icons.close, color: closeIconColor),
                   onPressed: () {
                     ScaffoldMessenger.of(context).hideCurrentSnackBar();
                   },
                 ),
               ],
             );
           },
         ),
       );
}
