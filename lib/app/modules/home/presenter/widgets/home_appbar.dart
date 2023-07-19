import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Ristorante  Panucci'),
      centerTitle: true,
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Icon(Icons.account_circle_sharp, size: 32),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
