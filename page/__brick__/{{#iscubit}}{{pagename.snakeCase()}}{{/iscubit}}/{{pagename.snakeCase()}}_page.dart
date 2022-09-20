import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '{{pagename.pascalCase()}}_cubit.dart';

class {{pagename.pascalCase()}}Page extends StatefulWidget {
  @override
  _{{pagename.pascalCase()}}PageState createState() => _{{pagename.pascalCase()}}PageState();
}

class _{{pagename.pascalCase()}}PageState extends State<{{pagename.pascalCase()}}Page> {
  final {{pagename.pascalCase()}}Cubit _{{pagename.pascalCase()}}Cubit = Modular.get();

  @override
  void dispose() {
    _{{pagename.pascalCase()}}Cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("{{pagename.pascalCase()}}")),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: _{{pagename.pascalCase()}}Cubit.decrement,
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: _{{pagename.pascalCase()}}Cubit.increment,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Button Tapped:"),
            BlocBuilder<{{pagename.pascalCase()}}Cubit, int>(
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