import 'package:flutter/material.dart';

import '../../../../../utils/colors.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
      child: ListView(
        children: [
          ListTile(
            title: Text(
              'Mesa 03',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.drawerFontColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Conta',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: AppColors.drawerFontColor,
              ),
            ),
          ),
          ListTile(
            iconColor: AppColors.drawerIconColor,
            onTap: () {},
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.receipt_long),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Pedido atual',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Text(
                  '100+',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          ListTile(
            iconColor: AppColors.drawerIconColor,
            textColor: AppColors.drawerFontColor,
            onTap: () {},
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.fact_check_outlined),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Todos os pedidos',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
