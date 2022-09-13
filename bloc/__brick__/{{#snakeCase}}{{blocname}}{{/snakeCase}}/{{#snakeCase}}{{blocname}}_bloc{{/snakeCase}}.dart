import 'package:bloc/bloc.dart';

enum {{blocname.pascalCase()}}Event {increment}

class {{blocname.pascalCase()}}Bloc extends Bloc<{{blocname.pascalCase()}}Event, int> {
  {{blocname.pascalCase()}}Bloc() : super(0);

  @override
  Stream<int> mapEventToState({{blocname.pascalCase()}}Event event) async* {
    switch (event) {
      case {{blocname.pascalCase()}}Event.increment:
        yield state + 1;
        break;
    }
  }
}