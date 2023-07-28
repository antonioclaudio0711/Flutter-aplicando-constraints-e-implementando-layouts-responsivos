import 'package:flutter/material.dart';

import '../../../../../../utils/menu.dart';
import '../title_section.dart';
import 'drinks_card.dart';

class DrinksSection extends StatelessWidget {
  const DrinksSection({super.key});

  final List drinkItems = drinks;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const TitleSection(titleText: 'Bebidas'),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return DrinksCard(
                image: drinkItems[index]['image'],
                name: drinkItems[index]['name'],
                price: drinkItems[index]['price'],
              );
            },
            childCount: drinkItems.length,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 158 / 194,
          ),
        )
      ],
    );
  }
}
