import 'package:flutter/material.dart';
import '../../../../../../../utils/colors.dart';

class ConfirmTicketButton extends StatelessWidget {
  const ConfirmTicketButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.only(top: 20, bottom: 50),
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.buttonBackground,
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.wallet,
                color: Colors.white,
              ),
              SizedBox(width: 10),
              Text(
                'Pedir',
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
