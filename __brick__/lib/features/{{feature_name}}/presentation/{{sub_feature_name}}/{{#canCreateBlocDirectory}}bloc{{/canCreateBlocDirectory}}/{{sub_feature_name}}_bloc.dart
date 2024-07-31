import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:bloc_effects/bloc_effects.dart';
part '{{sub_feature_name}}_event.dart';
part '{{sub_feature_name}}_state.dart';
{{#isEffect}}part '{{sub_feature_name}}_effect.dart'; {{/isEffect}}

class {{sub_feature_name.pascalCase()}}Bloc extends Bloc<{{sub_feature_name.pascalCase()}}Event, {{sub_feature_name.pascalCase()}}State>  {{#isEffect}}with Effects<{{sub_feature_name.pascalCase()}}Effect>{{/isEffect}} {
  
  {{sub_feature_name.pascalCase()}}Bloc() : super( {{sub_feature_name.pascalCase()}}State.initial()){
      on<{{sub_feature_name.pascalCase()}}Initialized>(_onInitialize);
      on<{{sub_feature_name.pascalCase()}}Refreshed>(_onRefresh);
  }
  static {{sub_feature_name.pascalCase()}}Bloc of(BuildContext context) => context.read<{{sub_feature_name.pascalCase()}}Bloc>();

  Future<void> _onInitialize({{sub_feature_name.pascalCase()}}Initialized state, Emitter<{{sub_feature_name.pascalCase()}}State> emit) async {
     _onLoad(emit); 
  }
  Future<void> _onRefresh({{sub_feature_name.pascalCase()}}Refreshed state, Emitter<{{sub_feature_name.pascalCase()}}State> emit) async {
     _onLoad(emit);
  }
  void _onLoad(Emitter<{{sub_feature_name.pascalCase()}}State> emit)  {
    emit( {{sub_feature_name.pascalCase()}}State.loading());
    // Do cool stuff.
    emit( {{sub_feature_name.pascalCase()}}State.loaded());
  }
}
