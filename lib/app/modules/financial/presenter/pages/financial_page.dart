import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_responsivity_constraints/app/modules/financial/presenter/store/financial_store.dart';
import 'package:flutter_responsivity_constraints/app/modules/financial/presenter/widgets/confirm_payment_section/confirm_payment_section.dart';
import 'package:flutter_responsivity_constraints/app/modules/financial/presenter/widgets/confirm_payment_section/elements/confirm_ticket_button.dart';
import 'package:flutter_responsivity_constraints/app/modules/financial/presenter/widgets/financial_food_item/financial_item_card.dart';
import 'package:flutter_responsivity_constraints/app/modules/financial/presenter/widgets/payment_card.dart';
import 'package:flutter_responsivity_constraints/app/modules/home/presenter/widgets/home_appbar.dart';
import 'package:flutter_responsivity_constraints/utils/models/food_model.dart';

import '../widgets/financial_food_item/card_elements/title_section.dart';

class FinancialPage extends StatefulWidget {
  const FinancialPage({
    super.key,
    required this.listFoods,
    required this.store,
  });

  final FinancialStore store;
  final List<Food> listFoods;

  @override
  State<FinancialPage> createState() => _FinancialPageState();
}

class _FinancialPageState extends State<FinancialPage> {
  List<Food> get listFoods => widget.listFoods;
  FinancialStore get store => widget.store;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: BlocBuilder<FinancialStore, FinancialState>(
          bloc: store,
          builder: (context, state) {
            return CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                const TitleSection(titleSection: 'Pedido'),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: listFoods.isNotEmpty ? listFoods.length : 1,
                    (context, index) {
                      if (listFoods.isEmpty) {
                        return const Text(
                          'Nenhum produto selecionado!',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.red,
                          ),
                        );
                      } else {
                        return FinancialItemCard(
                          image: listFoods[index].image,
                          name: listFoods[index].name,
                          price: listFoods[index].price,
                        );
                      }
                    },
                  ),
                ),
                const TitleSection(titleSection: 'Pagamento'),
                const PaymentCard(),
                const TitleSection(titleSection: 'Confirmar'),
                const ConfirmPaymentSection(),
                const ConfirmTicketButton(),
              ],
            );
          },
        ),
      ),
    );
  }
}
