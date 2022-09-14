import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';

import 'homes2_store.dart';

class Homes2Page extends StatefulWidget {

  const Homes2Page({Key? key}) : super(key: key);

  @override
  State<Homes2Page> createState() => _Homes2PageState();
}

class _Homes2PageState extends State<Homes2Page> {

var store = Modular.get<Homes2Store>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Homes2Page')),
      body:  Center(
        child: ScopedBuilder<Homes2Store, Exception, int>(
          store: store,
          onLoading: (context) => const CircularProgressIndicator(),
          onError: (context, error) => Text(error.toString()),
          onState: (context, state) => Text(state.toString()),
        ),
      )
    );
  }
}