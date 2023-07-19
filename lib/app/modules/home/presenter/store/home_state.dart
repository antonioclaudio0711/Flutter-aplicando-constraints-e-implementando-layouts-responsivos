part of 'home_store.dart';

abstract class HomeRistorantePanucciState extends Equatable {
  const HomeRistorantePanucciState();
}

class HomeRistorantePanucciInitialState extends HomeRistorantePanucciState {
  const HomeRistorantePanucciInitialState();

  @override
  List<Object?> get props => [];
}

class HomeRistorantePanucciLoadingState extends HomeRistorantePanucciState {
  const HomeRistorantePanucciLoadingState();

  @override
  List<Object?> get props => [];
}

class HomeRistorantePanucciSuccessState extends HomeRistorantePanucciState {
  const HomeRistorantePanucciSuccessState();

  @override
  List<Object?> get props => [];
}

class HomeRistorantePanucciFailureState extends HomeRistorantePanucciState {
  const HomeRistorantePanucciFailureState();

  @override
  List<Object?> get props => [];
}

class HomeState extends Equatable {
  final HomeRistorantePanucciState state;
  final int currentPage;

  const HomeState({
    this.state = const HomeRistorantePanucciInitialState(),
    this.currentPage = 0,
  });

  HomeState copyWith({
    HomeRistorantePanucciState? state,
    int? currentPage,
  }) {
    return HomeState(
      state: state ?? this.state,
      currentPage: currentPage ?? this.currentPage,
    );
  }

  @override
  List<Object?> get props => [state, currentPage];
}
