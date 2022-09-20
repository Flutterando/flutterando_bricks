import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '{{widgetname.snakeCase()}}_store.dart';

class {{widgetname.pascalCase()}}Page extends StatefulWidget {
  final String title;
  const {{widgetname.pascalCase()}}Page({Key key, this.title = "{{widgetname.pascalCase()}}"}) : super(key: key);

  @override
  _{{widgetname.pascalCase()}}PageState createState() => _{{widgetname.pascalCase()}}PageState();
}

class _{{widgetname.pascalCase()}}PageState extends ModularState<{{widgetname.pascalCase()}}Page, {{widgetname.pascalCase()}}Store> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Observer(
        builder: (context) => Text('${store.counter}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          store.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}






