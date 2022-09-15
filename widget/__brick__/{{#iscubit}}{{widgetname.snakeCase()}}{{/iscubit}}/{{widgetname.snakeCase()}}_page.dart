import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '{{widgetname.pascalCase()}}_cubit.dart';

class {{widgetname.pascalCase()}}Page extends StatefulWidget {
  @override
  _{{widgetname.pascalCase()}}PageState createState() => _{{widgetname.pascalCase()}}PageState();
}

class _{{widgetname.pascalCase()}}PageState extends State<{{widgetname.pascalCase()}}Page> {
  final {{widgetname.pascalCase()}}Cubit _{{widgetname.pascalCase()}}Cubit = Modular.get();

  @override
  void dispose() {
    _{{widgetname.pascalCase()}}Cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("{{widgetname.pascalCase()}}")),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: _{{widgetname.pascalCase()}}Cubit.decrement,
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: _{{widgetname.pascalCase()}}Cubit.increment,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Button Tapped:"),
            BlocBuilder<{{widgetname.pascalCase()}}Cubit, int>(
              bloc: _{{widgetname.pascalCase()}}Cubit,
              builder: (context, count) {
                return Text(
                  "$count",
                  style: Theme.of(context).textTheme.headline3,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}