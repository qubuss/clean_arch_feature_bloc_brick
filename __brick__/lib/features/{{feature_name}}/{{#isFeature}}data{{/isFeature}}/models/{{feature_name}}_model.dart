import 'package:equatable/equatable.dart';

class {{feature_name.pascalCase()}}Model extends Equatable
{
  const {{feature_name.pascalCase()}}Model();
  @override
  List<Object?> get props => <Object?>[];

  {{feature_name.pascalCase()}}Model copyWith() => {{feature_name.pascalCase()}}Model();
}