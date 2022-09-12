import 'package:bloc/bloc.dart';

class {{cubitname.pascalCase()}}Cubit extends Cubit<int> {
  {{cubitname.pascalCase()}}Cubit() : super(0);

  @override
  void increment() => emit(state+1);

}