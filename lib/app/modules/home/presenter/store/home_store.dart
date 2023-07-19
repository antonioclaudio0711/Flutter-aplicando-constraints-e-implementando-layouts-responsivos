import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_state.dart';

class HomeStore extends Cubit<HomeState> {
  HomeStore() : super(const HomeState());

  void changeCurrentPage({required int currentPage}) {
    emit(state.copyWith(
      state: const HomeRistorantePanucciSuccessState(),
      currentPage: currentPage,
    ));
  }
}
