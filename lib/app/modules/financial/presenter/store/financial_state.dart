part of 'financial_store.dart';

abstract class FinancialRistorantePanucciState extends Equatable {
  const FinancialRistorantePanucciState();
}

class FinancialRistorantePanucciSuccessState
    extends FinancialRistorantePanucciState {
  const FinancialRistorantePanucciSuccessState();
  @override
  List<Object?> get props => [];
}

class FinancialRistorantePanucciInitialState
    extends FinancialRistorantePanucciState {
  const FinancialRistorantePanucciInitialState();
  @override
  List<Object?> get props => [];
}

class FinancialRistorantePanucciFailureState
    extends FinancialRistorantePanucciState {
  const FinancialRistorantePanucciFailureState();
  @override
  List<Object?> get props => [];
}

class FinancialRistorantePanucciLoadingState
    extends FinancialRistorantePanucciState {
  const FinancialRistorantePanucciLoadingState();
  @override
  List<Object?> get props => [];
}

class FinancialState extends Equatable {
  const FinancialState({
    this.state = const FinancialRistorantePanucciInitialState(),
    this.ticketValue = 0.0,
    this.taxServiceValue = 0.0,
    this.totalValue = 0.0,
  });

  final FinancialRistorantePanucciState state;
  final double ticketValue;
  final double taxServiceValue;
  final double totalValue;

  FinancialState copyWith({
    FinancialRistorantePanucciState? state,
    double? ticketValue,
    double? taxServiceValue,
    double? totalValue,
  }) {
    return FinancialState(
      state: state ?? this.state,
      ticketValue: ticketValue ?? this.ticketValue,
      taxServiceValue: taxServiceValue ?? this.taxServiceValue,
      totalValue: totalValue ?? this.totalValue,
    );
  }

  @override
  List<Object?> get props => [
        state,
        ticketValue,
        taxServiceValue,
        totalValue,
      ];
}
