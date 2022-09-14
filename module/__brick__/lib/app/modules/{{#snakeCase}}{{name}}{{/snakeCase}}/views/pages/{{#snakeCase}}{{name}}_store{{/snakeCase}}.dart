import 'package:flutter_triple/flutter_triple.dart';

class {{#pascalCase}}{{name}}Store {{/pascalCase}} extends StreamStore<Exception, int> {
 {{#pascalCase}}{{name}}{{/pascalCase}}Store() : super(0);

  Future<void> increment() async {
    setLoading(true);

    await Future.delayed(const Duration(seconds: 1));

    int value = state + 1;
    if (value < 5) {
      update(value);
    } else {
      setError(Exception('Error: state not can be > 4'));
    }

    setLoading(false);
  }
}