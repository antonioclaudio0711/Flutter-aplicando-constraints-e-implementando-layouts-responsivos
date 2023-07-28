import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_responsivity_constraints/app/modules/home/presenter/store/home_store.dart';
import 'package:flutter_responsivity_constraints/app/modules/home/presenter/widgets/drinks/drinks_section.dart';
import 'package:flutter_responsivity_constraints/app/modules/home/presenter/widgets/highlight/highlight_section.dart';
import 'package:flutter_responsivity_constraints/app/modules/home/presenter/widgets/home_appbar.dart';
import 'package:flutter_responsivity_constraints/app/modules/home/presenter/widgets/home_drawer.dart';
import 'package:flutter_responsivity_constraints/app/modules/home/presenter/widgets/menu/menu_section.dart';
import 'package:flutter_responsivity_constraints/utils/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_responsivity_constraints/utils/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage(this.store, {super.key});

  final HomeStore store;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeStore get store => widget.store;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      floatingActionButton: BlocBuilder<HomeStore, HomeState>(
        bloc: store,
        builder: (context, state) {
          return FloatingActionButton(
            onPressed: () => Modular.to.pushNamed(
              AppRoutes.financialModuleRoute,
              arguments: state.listFood,
            ),
            child: const Icon(Icons.monetization_on),
          );
        },
      ),
      drawer: const HomeDrawer(),
      bottomNavigationBar: BlocBuilder<HomeStore, HomeState>(
        bloc: store,
        builder: (context, state) {
          return BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.star_rounded),
                label: 'Destaques',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.restaurant_menu),
                label: 'Menu',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_bar),
                label: 'Bebidas',
              )
            ],
            selectedItemColor: AppColors.bottomNavigationBarIconColor,
            currentIndex: state.currentPage,
            onTap: (index) {
              store.changeCurrentPage(currentPage: index);
            },
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: BlocBuilder<HomeStore, HomeState>(
          bloc: store,
          builder: (context, state) {
            switch (state.currentPage) {
              case 0:
                return HighlightSection(store: store);
              case 1:
                return const MenuSection();
              case 2:
                return const DrinksSection();
              default:
                return Container();
            }
          },
        ),
      ),
    );
  }
}
