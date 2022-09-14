import 'package:flutter_modular/flutter_modular.dart';
import 'views/pages/home_page.dart';
import 'views/pages/home_store.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) =>const HomePage()),
  ];
}