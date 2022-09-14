import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '{{blocname.snakeCase()}}_cubit.dart';

class {{blocname.pascalCase)}}Page extends StatefulWidget {
  @override
  _{{blocname.pascalCase)}}PageState createState() => _{{blocname.pascalCase)}}PageState();
}

class _{{blocname.pascalCase)}}PageState extends State<{{blocname.pascalCase)}}Page> {
  final {{blocname.pascalCase)}}Cubit _{{blocname.pascalCase)}}Cubit = Modular.get();

  @override
  void dispose() {
    _{{blocname.pascalCase)}}Cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("{{blocname.pascalCase)}}")),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: _{{blocname.pascalCase)}}Cubit.decrement,
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: _{{blocname.pascalCase)}}Cubit.increment,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Button Tapped:"),
            BlocBuilder<{{blocname.pascalCase)}}Cubit, int>(
              bloc: _{{blocname.pascalCase)}}Cubit,
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