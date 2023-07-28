import 'package:flutter/material.dart';
import 'package:flutter_responsivity_constraints/app/modules/home/presenter/store/home_store.dart';
import 'package:flutter_responsivity_constraints/utils/models/food_model.dart';
import '../../../../../../utils/colors.dart';

class HighlightCard extends StatefulWidget {
  const HighlightCard({
    super.key,
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    required this.store,
  });

  final String name;
  final String price;
  final String description;
  final String image;
  final HomeStore store;

  @override
  State<HighlightCard> createState() => _HighlightCardState();
}

class _HighlightCardState extends State<HighlightCard> {
  String get name => widget.name;
  String get price => widget.price;
  String get description => widget.description;
  String get image => widget.image;
  HomeStore get store => widget.store;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 140,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'R\$ $price',
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  description,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 16.5,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {
                      store.insertFood(
                        food: Food(
                          name: name,
                          price: price,
                          image: image,
                        ),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Produto selecionado com sucesso!'),
                          duration: Duration(seconds: 3),
                          backgroundColor: Color.fromARGB(255, 46, 19, 51),
                        ),
                      );
                    },
                    child: Container(
                      height: 45,
                      width: 90,
                      decoration: BoxDecoration(
                          color: AppColors.buttonBackground,
                          borderRadius: BorderRadius.circular(30)),
                      child: const Center(
                        child: Text(
                          'Pedir',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
