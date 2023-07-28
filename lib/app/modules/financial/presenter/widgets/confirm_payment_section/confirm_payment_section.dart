import 'package:flutter/material.dart';
import 'package:flutter_responsivity_constraints/app/modules/financial/presenter/widgets/confirm_payment_section/elements/description_row.dart';

class ConfirmPaymentSection extends StatelessWidget {
  const ConfirmPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Column(
        children: [
          DescriptionRow(keyText: 'Pedido:', valueText: '154,80'),
          DescriptionRow(keyText: 'Serviço (10%):', valueText: '15,48'),
          DescriptionRow(
            keyText: 'Total:',
            valueText: '170,28',
            fontSizeValueText: 20,
            fontWeightValueText: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
