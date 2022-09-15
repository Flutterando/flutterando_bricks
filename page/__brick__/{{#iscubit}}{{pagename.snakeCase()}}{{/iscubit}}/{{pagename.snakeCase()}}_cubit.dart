import 'package:flutter_bloc/flutter_bloc.dart';

class {{pagename.pascalCase()}}Cubit extends Cubit<int> {
  {{pagename.pascalCase()}}Cubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state 1);
}
