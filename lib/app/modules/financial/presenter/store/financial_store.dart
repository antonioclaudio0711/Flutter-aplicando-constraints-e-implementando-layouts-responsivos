import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'financial_state.dart';

class FinancialStore extends Cubit<FinancialState> {
  FinancialStore() : super(const FinancialState());

  void calcTotalValue() {
    emit(
      state.copyWith(
        state: const FinancialRistorantePanucciSuccessState(),
        totalValue: state.ticketValue + state.taxServiceValue,
      ),
    );
  }

  void calcTaxServiceValue() {
    emit(
      state.copyWith(
        state: const FinancialRistorantePanucciSuccessState(),
        taxServiceValue: state.ticketValue * 0.1,
      ),
    );
  }
}
