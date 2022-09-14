import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';

import '{{#snakeCase}}{{name}}Store{{/snakeCase}}.dart';

class {{#pascalCase}}{{name}} page {{/pascalCase}} extends StatefulWidget {

  const {{#pascalCase}}{{name}} page {{/pascalCase}}({Key? key}) : super(key: key);

  @override
  State<{{#pascalCase}}{{name}} page {{/pascalCase}}> createState() => _{{#pascalCase}}{{name}} page {{/pascalCase}}State();
}

class _{{#pascalCase}}{{name}} page {{/pascalCase}}State extends State<{{#pascalCase}}{{name}} page {{/pascalCase}}> {

var store = Modular.get<{{#pascalCase}}{{name}}{{/pascalCase}}Store>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('{{#pascalCase}}{{name}} page {{/pascalCase}}')),
      body:  Center(
        child: ScopedBuilder<{{#pascalCase}}{{name}}{{/pascalCase}}Store, Exception, int>(
          store: store,
          onLoading: (context) => const CircularProgressIndicator(),
          onError: (context, error) => Text(error.toString()),
          onState: (context, state) => Text(state.toString()),
        ),
      )
    );
  }
}