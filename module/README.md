# Module

A brick to create a module structure for your project!

## How to use 🚀

```
mason make module_brick
```

## Variables ✨

| Variable       | Description             | Default | Type     |
| -------------- | ----------------------- | ------- | -------- |
| `name` | The name of the module | lib     | `string` |
| `isClean` | Boolean variable to indicate if the module will be clean architecture or not | lib | `bool`

## Outputs for clean architecture module 📦

```
--project
|   ├── lib
│   │   ├── app
│   │   │   ├── modules
│   │   │   │   ├── name
|   |   |   |   |   ├── domain
|   |   |   |   |   |   ├── entites
|   |   |   |   |   |   |   ├── name.dart
|   |   |   |   |   |   ├── repositories
|   |   |   |   |   |   |   ├── name_repository.dart
|   |   |   |   |   |   ├── usecases
|   |   |   |   |   |   |   ├──get_names.dart
|   |   |   |   |   ├── external
|   |   |   |   |   |   ├── datasources
|   |   |   |   |   |   |   ├── name_datasource.dart
|   |   |   |   |   |   ├── mappers
|   |   |   |   |   |   |   ├── name_mapper.dart
|   |   |   |   |   ├── infra
|   |   |   |   |   |   ├── datasources
|   |   |   |   |   |   |   ├── name_datasource.dart
|   |   |   |   |   |   ├── repositories
|   |   |   |   |   |   |   ├── name_repository_impl.dart
|   |   |   |   |   ├── presenter
|   |   |   |   |   |   ├── pages
|   |   |   |   |   |   |   ├── name_page.dart
|   |   |   |   |   |   |   ├── name_store.dart
|   |   |   |   |   ├── name_module.dart
│   │   └── 
│   └──   
└── ...
```

## Outputs for module without clean architecture 📦

```
--project
|   ├── lib
│   │   ├── app
│   │   │   ├── modules
│   │   │   │   ├── name
|   |   |   |   |   ├── presenter
|   |   |   |   |   |   ├── pages
|   |   |   |   |   |   |   ├── name_page.dart
|   |   |   |   |   |   |   ├── name_store.dart
|   |   |   |   |   ├── name_module.dart
│   │   └── 
│   └──   
└── ...
```
