import 'package:mobx/mobx.dart';

part '../../{{pagename.snakeCase()}}_store.g.dart';

class {{pagename.pascalCase()}}Store = {{pagename.pascalCase()}}StoreBase with _${{pagename.pascalCase()}}Store;

abstract class {{pagename.pascalCase()}}StoreBase with Store {
  @observable
  int counter = 0;

  Future<void> increment() async {
    counter = counter + 1;
  }
}


