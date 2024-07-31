import 'package:{{app_name}}/features/{{feature_name}}/data/models/{{feature_name}}_model.dart';
abstract class {{feature_name.pascalCase()}}Repository 
{
  Future<{{feature_name.pascalCase()}}Model> get{{feature_name.pascalCase()}}Model();
}

class {{feature_name.pascalCase()}}RepositoryImpl implements {{feature_name.pascalCase()}}Repository 
{
  const {{feature_name.pascalCase()}}RepositoryImpl();
  @override
  Future<{{feature_name.pascalCase()}}Model> get{{feature_name.pascalCase()}}Model() async {
    return const {{feature_name.pascalCase()}}Model();
  }
}