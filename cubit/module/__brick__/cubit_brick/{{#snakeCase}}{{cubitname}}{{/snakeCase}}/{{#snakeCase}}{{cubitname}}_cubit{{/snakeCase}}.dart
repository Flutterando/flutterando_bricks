import 'package:bloc/bloc.dart';

class {{cubitname.pascalcase()}}Cubit extends Cubit<int> {
  {{cubitname.pascalcase()}}Cubit() : super(0);

  @override
  void increment() => emit(state+1);

}