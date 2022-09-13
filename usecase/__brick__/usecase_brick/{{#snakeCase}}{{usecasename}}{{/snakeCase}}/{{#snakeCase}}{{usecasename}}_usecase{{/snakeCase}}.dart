import 'package:dartz/dartz.dart';

abstract class I{{usecasename.pascalCase()}} {
  Future<Either<Exception, List<{{usecasename.pascalCase()}}>>> call();
}

class {{usecasename.pascalCase()}} extends I{{usecasename.pascalCase()}} { 

  @override
  Future<Either<Exception, List<{{usecasename.pascalCase()}}>>> call() async {
    throw UnimplementedError();
  }
}