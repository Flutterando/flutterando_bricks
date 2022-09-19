// ignore: unused_import
import '../entities/{{name.snakeCase()}}.dart';
import 'package:dartz/dartz.dart';


abstract class I{{name.pascalCase()}}Repository {
  Future<Either<Exception, List<{{name.pascalCase()}}>>> get{{name.pascalCase()}}s();
}
