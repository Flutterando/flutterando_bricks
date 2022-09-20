import 'package:dartz/dartz.dart';
import '../entities/{{name.snakeCase()}}.dart';
import '../repositories/{{name.snakeCase()}}_repository.dart';

abstract class IGet{{name.pascalCase()}}s {
  Future<Either<Exception, List<{{name.pascalCase()}}>>> call();
}

class Get{{name.pascalCase()}}s extends IGet{{name.pascalCase()}}s { 
  final I{{name.pascalCase()}}Repository repository;

  Get{{name.pascalCase()}}s(this.repository);

  @override
  Future<Either<Exception, List<{{name.pascalCase()}}>>> call() async {
    return await repository.get{{name.pascalCase()}}s();
  }
}