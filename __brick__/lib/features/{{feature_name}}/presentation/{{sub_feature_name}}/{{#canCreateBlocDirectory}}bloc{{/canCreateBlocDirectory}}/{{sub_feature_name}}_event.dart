part of '{{sub_feature_name}}_bloc.dart';

abstract class {{sub_feature_name.pascalCase()}}Event extends Equatable {
  const {{sub_feature_name.pascalCase()}}Event();
}

class {{sub_feature_name.pascalCase()}}Initialized extends {{sub_feature_name.pascalCase()}}Event {
  const {{sub_feature_name.pascalCase()}}Initialized();

  @override
  List<Object?> get props => <Object?>[];
}

class {{sub_feature_name.pascalCase()}}Refreshed extends {{sub_feature_name.pascalCase()}}Event {
  const {{sub_feature_name.pascalCase()}}Refreshed();

  @override
  List<Object?> get props => <Object?>[];
}