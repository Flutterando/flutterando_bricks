# Datasource

A brick to create a datasource structure for your project!

## How to use 🚀

```
mason make datasource_brick
```

## Variables ✨

| Variable       | Description             | Default | Type     |
| -------------- | ----------------------- | ------- | -------- |
| `datasourcename` | The name of the datasource | app     | `string` |

## Outputs 📦

```
--project
|   ├── lib
│   │   ├── app
│   │   │   ├── modules
│   │   │   │   ├── datasourcename
│   │   │   │       ├── external
|   |   |   |           ├── datasourcename_datasource.dart
|   |   |   |       ├── infra
|   |   |   |           ├── datasourcename_datasource.dart
│   │   └── 
│   └──   
└── ...
```