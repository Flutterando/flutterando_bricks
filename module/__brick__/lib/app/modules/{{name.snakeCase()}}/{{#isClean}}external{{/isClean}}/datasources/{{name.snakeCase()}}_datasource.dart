import 'package:dio/dio.dart';  
import '../../infra/datasources/{{name.snakeCase()}}_datasource.dart';
import '../../domain/entities/{{name.snakeCase()}}.dart';

class {{name.pascalCase()}}DataSourceImpl implements I{{name.pascalCase()}}DataSource {
  final Dio dio;

  {{name.pascalCase()}}DataSourceImpl(this.dio);

  @override
  Future<List<{{name.pascalCase()}}>> get{{name.pascalCase()}}s() async {
    var response = await dio.get('url');
    return response.data;
  }
}