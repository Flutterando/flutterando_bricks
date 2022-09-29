import 'package:flutter_triple/flutter_triple.dart';

{{#isClean}}
class {{name.pascalCase()}}Store extends StreamStore<Exception, List<{{name.pascalCase()}}>> {
  final Get{{name.pascalCase()}}s get{{name.pascalCase()}}s;
  {{name.pascalCase()}}Store(this.get{{name.pascalCase()}}s) : super([]);

  Future<void> getData() async {
    setLoading(true);

    final result = await get{{name.pascalCase()}}s();

    await result.fold(
      (l) async => setError(l),
      (r) async => update(r),
    );

    setLoading(false);
  }
}
{{/isClean}}

{{^isClean}}
class {{name.pascalCase()}}Store extends StreamStore<Exception, int> {
 {{name.pascalCase()}}Store() : super(0);

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
{{/isClean}}