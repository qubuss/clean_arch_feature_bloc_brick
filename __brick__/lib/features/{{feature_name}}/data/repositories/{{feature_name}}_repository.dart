import 'package:{{app_name}}/features/{{feature_name}}/data/models/{{feature_name}}_model.dart';
abstract class {{feature_name.pascalCase()}}Repository 
{
  Future<{{feature_name.pascalCase()}}Model> get{{feature_name.pascalCase()}}Model();
}

class {{feature_name.pascalCase()}}RepositoryImpl implements {{feature_name.pascalCase()}}Repository 
{
  @override
  Future<{{feature_name.pascalCase()}}Model> get{{feature_name.pascalCase()}}Model() async {
    return {{feature_name.pascalCase()}}Model();
  }
}