import 'package:dartz/dartz.dart';
import '../../domain/entities/{{name.snakeCase()}}.dart';
import '../../domain/repositories/{{name.snakeCase()}}_repository.dart';
import '../../infra/datasources/{{name.snakeCase()}}_datasource.dart';

class {{name.pascalCase()}}RepositoryImpl implements I{{name.pascalCase()}}Repository{
  final I{{name.pascalCase()}}DataSource dataSource;

  {{name.pascalCase()}}RepositoryImpl(this.dataSource);

  @override
  Future<Either<Exception, List<{{name.pascalCase()}}>>> get{{name.pascalCase()}}s() async {
    try {
    final result = await dataSource.get{{name.pascalCase()}}s();

    return Right(result);
      
    }  on Exception catch(e) {
      return Left(e);
    }
  }
}