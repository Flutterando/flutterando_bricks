import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '{{pagename.snakeCase()}}_store.dart';

class {{pagename.pascalCase()}}Page extends StatefulWidget {
  final String title;
  const {{pagename.pascalCase()}}Page({Key key, this.title = "{{pagename.pascalCase()}}"}) : super(key: key);

  @override
  _{{pagename.pascalCase()}}PageState createState() => _{{pagename.pascalCase()}}PageState();
}

class _{{pagename.pascalCase()}}PageState extends ModularState<{{pagename.pascalCase()}}Page, {{pagename.pascalCase()}}Store> {
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






