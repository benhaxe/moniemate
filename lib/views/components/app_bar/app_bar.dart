import 'package:flutter/material.dart';

class KAppBar extends StatelessWidget implements PreferredSizeWidget {
  const KAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).colorScheme.onSurface,
      title: Text(
        title,
      ),
      titleSpacing: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);
}
