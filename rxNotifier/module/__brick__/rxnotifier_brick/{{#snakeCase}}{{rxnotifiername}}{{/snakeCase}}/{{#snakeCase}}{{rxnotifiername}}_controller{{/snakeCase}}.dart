import 'package:rx_notifier/rx_notifier.dart';
 
class {{rxnotifiername.pascalCase()}}Controller {
  final _count = RxNotifier<int>(0);
  int get count => _count.value;
  setCount(int value) => _count.value = value;

  void increment() {
    setCount(count + 1);
  } 
}