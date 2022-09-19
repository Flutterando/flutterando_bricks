# Usecase

A brick to create a usecase structure for your project!

## How to use 🚀

```
mason make usecase_brick
```

## Variables ✨

| Variable       | Description             | Default | Type     |
| -------------- | ----------------------- | ------- | -------- |
| `usecasename` | The name of the usecase | lib | `string` |
| `modulename` | The name of the module in the usecase | lib | `string` |


## Outputs 📦

```
--project
|   ├── lib
│   │   ├── app
│   │   │   ├── modules
│   │   │   │   ├── usecasename
│   │   │   │       ├── domain
|   |   |   |           ├── usecases
|   |   |   |               ├── usecasename_usecase.dart
│   │   └── 
│   └──   
└── ...
```