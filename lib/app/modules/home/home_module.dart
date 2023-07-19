import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_responsivity_constraints/app/modules/home/presenter/pages/home_page.dart';
import 'package:flutter_responsivity_constraints/app/modules/home/presenter/store/home_store.dart';
import 'package:flutter_responsivity_constraints/utils/routes.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind<HomeState>((i) => const HomeState()),
        Bind<HomeStore>((i) => HomeStore()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          AppRoutes.initialRoute,
          child: (context, args) => HomePage(context.read()),
        ),
      ];
}
