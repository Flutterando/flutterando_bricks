# Datasource

A brick to create a datasource structure for your project!

## How to use 🚀

```
mason make datasource_brick
```

## Variables ✨

| Variable       | Description             | Default | Type     |
| -------------- | ----------------------- | ------- | -------- |
| `datasourcename` | The name of the datasource | lib     | `string` |
| `methodname` | The name of the datasource method | lib | `string`

## Outputs 📦

```
--project
|   ├── lib
│   │   ├── app
│   │   │   ├── modules
│   │   │   │   ├── datasourcename
│   │   │   │   |   ├── external
|   |   |   |   |   |   ├── datasources
|   |   |   |   |   |   |   ├── datasourcename_datasource.dart
|   |   |   |   |   ├── infra
|   |   |   |   |   |   ├── datasources
|   |   |   |   |   |   |   ├── datasourcename_datasource.dart
│   │   └── 
│   └──   
└── ...
```