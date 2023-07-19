import 'package:flutter/material.dart';
import 'package:flutter_responsivity_constraints/app/modules/home/presenter/store/home_store.dart';
import 'package:flutter_responsivity_constraints/app/modules/home/presenter/widgets/highlight/highlight_card.dart';
import 'package:flutter_responsivity_constraints/app/modules/home/presenter/widgets/home_appbar.dart';
import 'package:flutter_responsivity_constraints/app/modules/home/presenter/widgets/home_drawer.dart';
import 'package:flutter_responsivity_constraints/utils/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: BlocBuilder<HomeStore, HomeState>(
            bloc: store,
            builder: (context, state) {
              switch (state.currentPage) {
                case 0:
                  return const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Destaques do dia',
                        style: TextStyle(fontFamily: 'Caveat', fontSize: 35),
                      ),
                      SizedBox(height: 15),
                      HighlightCard(),
                      HighlightCard(),
                      HighlightCard(),
                      HighlightCard(),
                    ],
                  );
                case 1:
                  return Text('Menu yjtkyktk');
                case 2:
                  return Text('Bebidas');
                default:
                  return Container();
              }
            },
          ),
        ),
      ),
    );
  }
}
