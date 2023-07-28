import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_responsivity_constraints/app/modules/financial/presenter/pages/financial_page.dart';
import 'package:flutter_responsivity_constraints/app/modules/financial/presenter/store/financial_store.dart';
import 'package:flutter_responsivity_constraints/utils/models/food_model.dart';
import 'package:flutter_responsivity_constraints/utils/routes.dart';

class FinancialModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind<FinancialState>((i) => const FinancialState()),
        Bind<FinancialStore>((i) => FinancialStore())
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          AppRoutes.initialRoute,
          child: (context, args) => FinancialPage(
            store: context.read(),
            listFoods: args.data as List<Food>,
          ),
        )
      ];
}
