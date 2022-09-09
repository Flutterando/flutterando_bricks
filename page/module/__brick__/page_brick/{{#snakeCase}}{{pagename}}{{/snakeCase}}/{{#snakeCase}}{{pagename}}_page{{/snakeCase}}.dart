import 'package:flutter/material.dart';

class {{pagename.pascalCase()}} extends StatefulWidget {
  final String title;
  const {{pagename.pascalCase()}}({Key? key, this.title = '{{pagename.pascalCase()}}'}) : super(key: key);
  @override
  {{pagename.pascalCase()}}State createState() => {{pagename.pascalCase()}}State();
}
class {{pagename.pascalCase()}}State extends State<{{pagename.pascalCase()}}> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: const <Widget>[],
      ),
    );
  }
}