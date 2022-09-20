import '../../domain/entities/{{name.snakeCase()}}.dart';

abstract class I{{name.pascalCase()}}DataSource {  
  
  Future<List<{{name.pascalCase()}}>> get{{name.pascalCase()}}s();
}