import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
part '{{sub_feature_name}}_event.dart';
part '{{sub_feature_name}}_state.dart';
part '{{sub_feature_name}}_effect.dart';

class {{sub_feature_name.pascalCase()}}Bloc extends Bloc<{{sub_feature_name.pascalCase()}}Event, {{sub_feature_name.pascalCase()}}State> {
  
  {{sub_feature_name.pascalCase()}}Bloc() : super( {{sub_feature_name.pascalCase()}}State.initial()){
      on<{{sub_feature_name.pascalCase()}}Initialized>(_onInitialize);
      on<{{sub_feature_name.pascalCase()}}Refreshed>(_onRefresh);
  }
  static {{sub_feature_name.pascalCase()}}Bloc of(BuildContext context) => context.read<{{sub_feature_name.pascalCase()}}Bloc>();

  Future<void> _onInitialize({{sub_feature_name.pascalCase()}}Initialized state, Emitter<{{sub_feature_name.pascalCase()}}State> emit) async {
    await _onLoad(emit); 
  }
  Future<void> _onRefresh({{sub_feature_name.pascalCase()}}Refreshed state, Emitter<{{sub_feature_name.pascalCase()}}State> emit) async {
    await _onLoad(emit);
  }
  Future<void> _onLoad(Emitter<{{sub_feature_name.pascalCase()}}State> emit) async {
    emit( {{sub_feature_name.pascalCase()}}State.loading());
    // Do cool stuff.
    emit( {{sub_feature_name.pascalCase()}}State.loaded());
  }
}
