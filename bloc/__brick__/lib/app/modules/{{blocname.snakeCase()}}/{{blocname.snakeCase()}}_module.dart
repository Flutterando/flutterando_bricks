import 'package:flutter_modular/flutter_modular.dart';

import '{{blocname.snakeCase()}}_cubit.dart';
import '{{blocname.snakeCase()}}_page.dart';

class {{blocname.pascalCase()}}Module extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => {{blocname.pascalCase()}}Cubit()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (context, args) => {{blocname.pascalCase()}}Page()),
  ];
}