import 'package:flutter/material.dart';
import 'package:{{app_name}}/features/{{feature_name}}/presentation/{{sub_feature_name}}/bloc/{{sub_feature_name}}_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{app_name}}/widgets/indicators/loading_indicator_widget.dart';
import 'package:{{app_name}}/widgets/lists/empty_list_widget.dart';

class {{sub_feature_name.pascalCase()}}Page extends StatelessWidget {
  const {{#pascalCase}}{{sub_feature_name}}{{/pascalCase}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: BlocBuilder<{{sub_feature_name.pascalCase()}}Bloc, {{sub_feature_name.pascalCase()}}State>(
        builder: (BuildContext context, {{sub_feature_name.pascalCase()}}State state) {
          if (state is {{sub_feature_name.pascalCase()}}Loading) {
            return const Center(
              child: LoadingIndicator(),
            );
          } else if (state is {{sub_feature_name.pascalCase()}}Loaded) {

            return const Text('Body');
          } else if (state is {{sub_feature_name.pascalCase()}}Error) {

            return RefreshIndicator(
              onRefresh: () async => _onRefresh(context),
              child: EmptyList(title: state.error),
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
  Future<void> _onRefresh(BuildContext context) async {
    {{sub_feature_name.pascalCase()}}Bloc.of(context).add(
      const {{sub_feature_name.pascalCase()}}Refreshed(),
    );
  }
}