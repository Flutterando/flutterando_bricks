import 'package:flutter/material.dart';

class {{#pascalCase}}{{name}} page {{/pascalCase}} extends StatelessWidget {

  const {{#pascalCase}}{{name}} page {{/pascalCase}}({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('{{#pascalCase}}{{name}} page {{/pascalCase}}')),
      body: const Center(
        child: Text('This is initial page'),
      ),
    );
  }
}