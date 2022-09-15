import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';


import '{{pagename.snakeCase()}}_store.dart';

class {{pagename.pascalCase()}}Page extends StatefulWidget {
  final String title;
  const {{pagename.pascalCase()}}Page({Key? key, this.title = "{{pagename.pascalCase()}}"}) : super(key: key);

  @override
  _{{pagename.pascalCase()}}PageState createState() => _{{pagename.pascalCase()}}PageState();
}

class _{{pagename.pascalCase()}}PageState extends ModularState<{{pagename.pascalCase()}}Page, {{pagename.pascalCase()}}Store> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('{{pagename.pascalCase()}}'),
      ),
      body: ScopedBuilder<{{pagename.pascalCase()}}Store, Exception, int>(
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

