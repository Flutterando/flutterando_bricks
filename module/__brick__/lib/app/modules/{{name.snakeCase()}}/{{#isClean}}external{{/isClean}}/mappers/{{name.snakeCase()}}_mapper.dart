import '../../domain/entities/{{name.snakeCase()}}.dart';

class {{name.pascalCase()}}Mapper {
  {{name.pascalCase()}}Mapper();

  {{name.pascalCase()}} fromMap(Map<String, dynamic> map) {
    return {{name.pascalCase()}}(
      id: map['id'],
      name: map['name'],
    );
  }

  Map<String, dynamic> toMap({{name.pascalCase()}} {{name.snakeCase()}}) {
    return {
      'id': {{name.snakeCase()}}.id,
      'name': {{name.snakeCase()}}.name,
    };
  }
}