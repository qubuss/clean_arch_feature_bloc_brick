import 'package:mason/mason.dart';
import 'dart:io';

import 'package:yaml/yaml.dart';

Future run(HookContext context) async {
  final logger = context.logger;

  final brickType = context.vars['type'].toString().toLowerCase();
  final isFeature = brickType == 'feature';
  final isPresentation = brickType == 'presentation' || brickType == 'feature';
  final isPresentationView = brickType == 'presentation_view';
  final directory = Directory.current.path;
  final canCreateBlocDirectory = brickType != 'presentation_view';
  final createViewDirectory = brickType != 'presentation_bloc';
  try {
    final packageName = getValueFromPubspec(key: 'name');
    context.logger.info('packageName: $packageName');
    bool isEffect = false;
    if (canCreateBlocDirectory) {
      isEffect = context.logger.confirm(
        '? Do you want to create effect class for one-time-effect? (default: Y)',
        defaultValue: true,
      );
    }

    context.vars = {
      ...context.vars,
      'isFeature': isFeature,
      'isPresentation': isPresentation,
      'isPresentationView': isPresentationView,
      'canCreateBlocDirectory': canCreateBlocDirectory,
      'createViewDirectory': createViewDirectory,
      'isEffect': isEffect,
      'app_name': packageName,
    };
  } on Exception catch (e) {
    throw e;
  }
}

String getValueFromPubspec({required String key}) {
  final pubSpecFile = File('pubspec.yaml');
  final content = pubSpecFile.readAsStringSync();
  final yamlMap = loadYaml(content);
  return yamlMap[key];
}
