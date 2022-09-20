import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';

import 'home_store.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

var store = Modular.get<HomeStore>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('HomePage')),
      body:  Center(
        child: ScopedBuilder<HomeStore, Exception, int>(
          store: store,
          onLoading: (context) => const CircularProgressIndicator(),
          onError: (context, error) => Text(error.toString()),
          onState: (context, state) => Text(state.toString()),
        ),
      )
    );
  }
}