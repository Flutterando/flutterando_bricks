# Widget

A brick to create a widget structure for your project, depending of the type you want.

## How to use 🚀

```
mason make widget_brick
```

## Variables ✨

| Variable       | Description             | Default | Type     |
| -------------- | ----------------------- | ------- | -------- |
| `widgetname` | The name of the widget | lib | `string` |
| `iscubit` | Boolean variable to indicate if the widget will be type cubit or not | lib | `bool` |
| `isbloc` | Boolean variable to indicate if the widget will be type bloc or not | lib | `bool` |
| `istriple` | Boolean variable to indicate if the widget will be type triple or not| lib | `bool` |
| `ismobx` | Boolean variable to indicate if the widget will be type mobx or not | lib | `bool` |


## Outputs for page type bloc 📦

```
--project
|   ├── lib
│   │   ├── widgetname
|   |   |   ├── widgetname_controller.dart  
|   |   |   ├── widgetname_page.dart            
│   └──   
└── ...
```

## Outputs for page type cubit 📦

```
--project
|   ├── lib
│   │   ├── widgetname
|   |   |   ├── widgetname_cubit.dart  
|   |   |   ├── widgetname_page.dart            
│   └──   
└── ...
```

## Outputs for page type mobx 📦

```
--project
|   ├── lib
│   │   ├── widgetname
|   |   |   ├── widgetname_page.dart  
|   |   |   ├── widgetname_store.dart            
│   └──   
└── ...
```

## Outputs for page type triple 📦

```
--project
|   ├── lib
│   │   ├── widgetname
|   |   |   ├── widgetname_page.dart  
|   |   |   ├── widgetname_store.dart            
│   └──   
└── ...
```