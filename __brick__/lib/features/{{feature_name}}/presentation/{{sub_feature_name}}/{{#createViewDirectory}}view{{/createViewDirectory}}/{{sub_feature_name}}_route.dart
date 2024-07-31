import 'package:flutter/material.dart';
import 'package:{{app_name}}/features/{{feature_name}}/presentation/{{sub_feature_name}}/view/{{sub_feature_name}}_page.dart';
{{#isPresentation}}
import 'package:{{app_name}}/features/{{feature_name}}/presentation/{{sub_feature_name}}/bloc/{{sub_feature_name}}_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
{{/isPresentation}}
class {{sub_feature_name.pascalCase()}}Route extends StatelessWidget {
  const {{sub_feature_name.pascalCase()}}Route({super.key});

  @override
  Widget build(BuildContext context) {
    {{#isPresentation}}
       return BlocProvider<{{sub_feature_name.pascalCase()}}Bloc>(
          create: (_) => {{sub_feature_name.pascalCase()}}Bloc(),
          child: const {{sub_feature_name.pascalCase()}}Page(),
        );
    {{/isPresentation}}{{#isPresentationView}}
      return const {{sub_feature_name.pascalCase()}}Page();
    {{/isPresentationView}}
 
  }
}