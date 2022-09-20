import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '{{widgetname.pascalCase()}}_controller.dart';

class {{widgetname.pascalCase()}}Page extends StatefulWidget {
  final String title;
  const {{widgetname.pascalCase()}}Page({Key? key, this.title = "{{widgetname.pascalCase()}}"}}) : super(key: key);

  @override
  _{{widgetname.pascalCase()}}PageState createState() => _{{widgetname.pascalCase()}}PageState();
}

class _{{widgetname.pascalCase()}}PageState extends ModularState<{{widgetname.pascalCase()}}Page, {{widgetname.pascalCase()}}Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: StreamBuilder(
        stream: store.counterStream,
        builder: (context, snapshot) => Text('${snapshot.data}'),
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