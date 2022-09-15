import 'package:dartz/dartz.dart';
import 'package:app/modules/{{repositoryname.snakeCase()}}/domain/repositories/{{repositoryname.snakeCase()}}_repository.dart';
import 'package:app/modules/{{repositoryname.snakeCase()}}/infra/datasources/{{datasourcename.snakeCase()}}_datasource.dart';

class {{repositoryname.pascalCase()}}RepositoryImpl implements I{{repositoryname.pascalCase()}}Repository{
  final {{datasourcename.pascalCase()}}DataSource dataSource;

  {{repositoryname.pascalCase()}}RepositoryImpl(this.dataSource);

  @override
  Future<Either<Exception, List<{{repositoryname.pascalCase()}}>>> {{methodname.pascalCase()}}() async {
    try {
    final result = await dataSource.{{methodname.pascalCase()}}();

    return Right(result);
      
    } catch (e) {
      return Left(e);
    }
  }

}