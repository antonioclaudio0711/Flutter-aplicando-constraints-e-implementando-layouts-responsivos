import 'package:flutter/cupertino.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.titleText,
  });

  final String titleText;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Text(
            titleText,
            style: const TextStyle(fontFamily: 'Caveat', fontSize: 35),
          ),
          const SizedBox(height: 15),
        ],
      ),
    ); //
  }
}
