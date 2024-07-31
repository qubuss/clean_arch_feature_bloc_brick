part of '{{sub_feature_name}}_bloc.dart';



sealed class {{sub_feature_name.pascalCase()}}State extends Equatable {
  const {{sub_feature_name.pascalCase()}}State();

  factory {{sub_feature_name.pascalCase()}}State.initial() => const {{sub_feature_name.pascalCase()}}Initial();
  factory {{sub_feature_name.pascalCase()}}State.loading() => const {{sub_feature_name.pascalCase()}}Loading();
  factory {{sub_feature_name.pascalCase()}}State.loaded() => const {{sub_feature_name.pascalCase()}}Loaded();
  factory {{sub_feature_name.pascalCase()}}State.error({required String error}) =>  {{sub_feature_name.pascalCase()}}Error(error: error);
  
  @override
  List<Object?> get props => <Object?>[];
  }
class {{sub_feature_name.pascalCase()}}Initial extends {{sub_feature_name.pascalCase()}}State  {
  const {{sub_feature_name.pascalCase()}}Initial();

  }

class {{sub_feature_name.pascalCase()}}Loading extends {{sub_feature_name.pascalCase()}}State  {
  const {{sub_feature_name.pascalCase()}}Loading();

  }

class {{sub_feature_name.pascalCase()}}Loaded extends {{sub_feature_name.pascalCase()}}State  {
  const {{sub_feature_name.pascalCase()}}Loaded();

  }

class {{sub_feature_name.pascalCase()}}Error extends {{sub_feature_name.pascalCase()}}State  {
  final String error;
  const {{sub_feature_name.pascalCase()}}Error({required this.error});

  }
 

