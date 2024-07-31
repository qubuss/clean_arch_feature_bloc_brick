# feature

A mason brick to create a new feature using BLoC and Route.

## Prerequisites 🧱

- Installed version of [equatable] and [flutter_bloc] >= 8.0.0.
- Mason installed
- Brick should be created from main project path (e.g. ewlapp/): your terminal should be where lib/ is located.

## Install 🧱

```Console
mason add feature --git-url [LINK TO GIT] --git-path bricks/feature 
```

## Usage 🚀

```Console
mason make feature 
```

or

```Console
mason make feature --type type --feature_name feature --sub_feature_name sub_feature
```

## Variables ✨

| variable           | description                  | default | type      |
| ------------------ | ---------------------------- | ------- | --------- |
| `type`         | Type of created feature          | presentation| enum [ feature, presentation, presentation_view]  |
| `feature_name`     | name of the feature          | todo   | `string`  |
| `sub_feature_name` | name of the sub feature      |  todo_details | `string`  |
| `isEffect`        | if true, creates effect file | true   | `boolean` |

Variable `type` can be one of the following values:

- `feature` - creates a new feature with all the necessary files
- `presentation` - creates a new presentation layer for the feature (bloc, view)
- `presentation_view` - creates a new view for the feature (view without bloc)

## Output 📦

```Console
lib/features
├── todo
│   ├── data
|   |   ├── models
|   |   ├── repositories
│   ├── domain
|   |   ├── usecases
│   ├── presentation
│   |   ├── todo_details
│   |       ├── bloc
│   │       |   ├── todo_details_bloc.dart
│   │       |   ├── todo_details_event.dart
│   │       |   ├── todo_details_effect.dart
│   │       |   └── todo_details_state.dart
│   |       ├── view
│   │       |   ├── todo_details_route.dart
│   │       |   └── todo_details_page.dart
└── ...
```

[flutter_bloc]: https://pub.dev/packages/flutter_bloc
[equatable]: https://pub.dev/packages/equatable
