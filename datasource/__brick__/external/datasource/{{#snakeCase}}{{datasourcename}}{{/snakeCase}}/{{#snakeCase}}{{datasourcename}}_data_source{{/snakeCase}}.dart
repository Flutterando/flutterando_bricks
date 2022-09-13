import 'package:dio/dio.dart';  
import '../../infra/datasource/datasourcePage_data_source.dart';
class {{datasourcename.pascalCase()}}DataSourceImpl implements I{{datasourcename.pascalCase()}}DataSource {
  final Dio dio;

  {{datasourcename.pascalCase()}}DataSourceImpl(this.dio);

  @override
  Future<List<String>> getListData() async {
    var response = await dio.get('url');
    return response.data;
  }
}