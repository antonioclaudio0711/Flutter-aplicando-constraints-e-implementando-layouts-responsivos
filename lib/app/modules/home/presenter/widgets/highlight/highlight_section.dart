import 'package:flutter/material.dart';
import 'package:flutter_responsivity_constraints/app/modules/home/presenter/store/home_store.dart';

import '../../../../../../utils/menu.dart';
import '../title_section.dart';
import 'highlight_card.dart';

class HighlightSection extends StatelessWidget {
  const HighlightSection({
    super.key,
    required this.store,
  });

  final List highlightItems = destaques;
  final HomeStore store;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const TitleSection(titleText: 'Destaques'),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: highlightItems.length,
            (context, index) {
              return HighlightCard(
                store: store,
                name: highlightItems[index]['name'],
                price: highlightItems[index]['price'],
                description: highlightItems[index]['description'],
                image: highlightItems[index]['image'],
              );
            },
          ),
        ),
      ],
    );
  }
}
