# Page

A brick to create a page structure for your project, depending of the type you want.

## How to use 🚀

```
mason make page_brick
```

## Variables ✨

| Variable       | Description             | Default | Type     |
| -------------- | ----------------------- | ------- | -------- |
| `pagename` | The name of the page | lib | `string` |
| `iscubit` | Boolean variable to indicate if the page will be type cubit or not | lib | `bool` |
| `isbloc` | Boolean variable to indicate if the page will be type bloc or not | lib | `bool` |
| `istriple` | Boolean variable to indicate if the page will be type triple or not| lib | `bool` |
| `ismobx` | Boolean variable to indicate if the page will be type mobx or not | lib | `bool` |


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