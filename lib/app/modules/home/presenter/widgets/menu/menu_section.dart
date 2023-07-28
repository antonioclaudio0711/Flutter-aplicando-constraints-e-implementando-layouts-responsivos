import 'package:flutter/material.dart';

import '../../../../../../utils/menu.dart';
import '../title_section.dart';
import 'menu_card.dart';

class MenuSection extends StatelessWidget {
  const MenuSection({super.key});

  final List menuItems = comidas;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const TitleSection(titleText: 'Menu'),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return MenuCard(
                name: menuItems[index]['name'],
                price: menuItems[index]['price'],
                image: menuItems[index]['image'],
              );
            },
            childCount: menuItems.length,
          ),
        )
      ],
    );
  }
}
