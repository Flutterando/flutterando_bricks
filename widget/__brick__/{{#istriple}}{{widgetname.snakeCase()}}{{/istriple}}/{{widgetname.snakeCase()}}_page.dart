import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';


import '{{widgetname.snakeCase()}}_store.dart';

class {{widgetname.pascalCase()}}Page extends StatefulWidget {
  final String title;
  const {{widgetname.pascalCase()}}Page({Key? key, this.title = "{{widgetname.pascalCase()}}"}) : super(key: key);

  @override
  _{{widgetname.pascalCase()}}PageState createState() => _{{widgetname.pascalCase()}}PageState();
}

class _{{widgetname.pascalCase()}}PageState extends ModularState<{{widgetname.pascalCase()}}Page, {{widgetname.pascalCase()}}Store> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('{{widgetname.pascalCase()}}'),
      ),
      body: ScopedBuilder<{{widgetname.pascalCase()}}Store, Exception, int>(
        store: store,
        onState: (_, counter) {
          return Padding(
            padding: EdgeInsets.all(10),
            child: Text('$counter'),
          );
        },
        onError: (context, error) => Center(
          child: Text(
            'Too many clicks',
            style: TextStyle(color: Colors.red),
          ),
        ),
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

