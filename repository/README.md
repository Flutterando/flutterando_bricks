# Repository

A brick to create a repository structure for your project!

## How to use 🚀

```
mason make repository_brick
```

## Variables ✨

| Variable       | Description             | Default | Type     |
| -------------- | ----------------------- | ------- | -------- |
| `repositoryname` | The name of the repository | lib | `string` |
| `methodname` | The name of the method in the repository | lib | `string` |
| `datasourcename` | The name of the datasource in the repository | lib | `string` | 

## Outputs 📦

```
--project
|   ├── lib
│   │   ├── app
│   │   │   ├── modules
│   │   │   │   ├── repositoryname
│   │   │   │   |   ├── domain
|   |   |   |   |   |   ├── repositories
|   |   |   |   |   |   |  ├── repositoryname_repository.dart
|   |   |   |   |   ├── infra
|   |   |   |   |   |   ├── repositories
|   |   |   |   |   |   |   ├── repositoryname_repository_impl.dart        
│   │   └── 
│   └──   
└── ...
```