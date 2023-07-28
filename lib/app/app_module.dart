import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_responsivity_constraints/app/modules/financial/financial_module.dart';
import 'package:flutter_responsivity_constraints/app/modules/home/home_module.dart';
import 'package:flutter_responsivity_constraints/utils/routes.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          AppRoutes.initialRoute,
          module: HomeModule(),
        ),
        ModuleRoute(
          AppRoutes.financialModuleRoute,
          module: FinancialModule(),
        )
      ];
}
