import 'package:flutter_modular/flutter_modular.dart';
import 'views/pages/homes2_page.dart';
import 'views/pages/homes2_store.dart';

class Homes2Module extends Module {
  @override
  List<Bind> get binds => [
    Bind.lazySingleton((i) => Homes2Store()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) =>const Homes2Page()),
  ];
}