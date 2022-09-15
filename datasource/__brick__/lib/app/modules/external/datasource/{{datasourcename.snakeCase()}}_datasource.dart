import 'package:dio/dio.dart';  
import '../../infra/datasource/{{datasourcename.snakeCase()}}_datasource.dart';

class {{datasourcename.pascalCase()}}DataSourceImpl implements I{{datasourcename.pascalCase()}}DataSource {
  final Dio dio;

  {{datasourcename.pascalCase()}}DataSourceImpl(this.dio);

  @override
  Future<List<String>> {{methodname.pascalCase()}}() async {
    var response = await dio.get('url');
    return response.data;
  }
}