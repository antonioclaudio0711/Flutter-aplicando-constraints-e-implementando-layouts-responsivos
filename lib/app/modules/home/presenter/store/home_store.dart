import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_responsivity_constraints/utils/models/food_model.dart';

part 'home_state.dart';

class HomeStore extends Cubit<HomeState> {
  HomeStore() : super(const HomeState());

  void changeCurrentPage({required int currentPage}) {
    emit(state.copyWith(
      state: const HomeRistorantePanucciSuccessState(),
      currentPage: currentPage,
    ));
  }

  void insertFood({required Food food}) {
    List<Food> modifiedList = List.from(state.listFood);

    modifiedList.add(
      Food(
        name: food.name,
        price: food.price,
        image: food.image,
      ),
    );

    emit(state.copyWith(
      state: const HomeRistorantePanucciSuccessState(),
      listFood: modifiedList,
    ));
  }
}
