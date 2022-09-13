import 'package:flutter/material.dart';

class {{widgetname.pascalCase()}}Widget extends StatelessWidget {
  final String title;
  const {{widgetname.pascalCase()}}Widget({Key? key, this.title = "{{widgetname.pascalCase()}}Widget"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(title));
  }
}