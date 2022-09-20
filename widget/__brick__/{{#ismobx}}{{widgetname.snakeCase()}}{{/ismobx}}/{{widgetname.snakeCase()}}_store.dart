import 'package:mobx/mobx.dart';

part '../../{{widgetname.snakeCase()}}_store.g.dart';

class {{widgetname.pascalCase()}}Store = {{widgetname.pascalCase()}}StoreBase with _${{widgetname.pascalCase()}}Store;

abstract class {{widgetname.pascalCase()}}StoreBase with Store {
  @observable
  int counter = 0;

  Future<void> increment() async {
    counter = counter + 1;
  }
}


