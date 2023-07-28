import 'package:flutter/material.dart';
import 'package:flutter_responsivity_constraints/app/modules/financial/presenter/widgets/financial_food_item/card_elements/product_description.dart';
import 'card_elements/counter.dart';

class FinancialItemCard extends StatelessWidget {
  const FinancialItemCard({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });

  final String image;
  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15.0),
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 100,
            height: MediaQuery.of(context).size.height,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          ProductDescription(
            name: name,
            price: price,
          ),
          const Counter(),
        ],
      ),
    );
  }
}
