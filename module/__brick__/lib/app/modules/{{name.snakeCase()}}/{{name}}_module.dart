import 'package:flutter_modular/flutter_modular.dart';
import 'views/pages/{{#snakeCase}}{{name}}_page {{/snakeCase}}.dart';
import 'views/pages/{{#snakeCase}}{{name}}_store {{/snakeCase}}.dart';

class {{#pascalCase}}{{name}} module {{/pascalCase}} extends Module {
  @override
  List<Bind> get binds => [
    Bind.lazySingleton((i) => {{#pascalCase}}{{name}}{{/pascalCase}}Store()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) =>const {{#pascalCase}}{{name}}Page{{/pascalCase}}()),
  ];
}