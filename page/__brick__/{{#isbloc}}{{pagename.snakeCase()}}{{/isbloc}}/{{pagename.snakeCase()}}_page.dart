import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '{{pagename.pascalCase()}}_controller.dart';

class {{pagename.pascalCase()}}Page extends StatefulWidget {
  final String title;
  const {{pagename.pascalCase()}}Page({Key? key, this.title = "{{pagename.pascalCase()}}"}}) : super(key: key);

  @override
  _{{pagename.pascalCase()}}PageState createState() => _{{pagename.pascalCase()}}PageState();
}

class _{{pagename.pascalCase()}}PageState extends ModularState<{{pagename.pascalCase()}}Page, {{pagename.pascalCase()}}Controller> {
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