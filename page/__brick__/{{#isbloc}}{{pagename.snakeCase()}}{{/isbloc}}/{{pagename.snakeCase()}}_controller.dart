import 'package:flutter_modular/flutter_modular.dart';
import 'package:rxdart/rxdart.dart';

class {{pagename.pascalCase()}}Controller extends Disposable {
  var _controller = BehaviorSubject.seeded(0);

  {{pagename.pascalCase()}}Controller() {
    counterStream = _controller.stream;
  }

  late Stream<int> counterStream;

  void increment() {
    _controller.add(_controller.value! + 1);
  }

  @override
  void dispose() {
    _controller.close();
  }
}
