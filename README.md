# expansion_tile_group

A Flutter widget that can be manager group of custom expansion tile

## Overview
![Custom expansion](https://user-images.githubusercontent.com/15138747/207923692-ebb70b23-7067-4fdf-af5c-09f3c1a537be.gif)  ![Collapse all](https://user-images.githubusercontent.com/15138747/207909729-c63537c7-75d1-4b55-9617-821976e3dabf.gif)
![Expand only current](https://user-images.githubusercontent.com/15138747/207908164-142a69d1-bc84-4d72-b1f9-a5f6f8d4fb9e.gif) ![Control behavior anywhere](https://user-images.githubusercontent.com/15138747/207922434-83d06656-2c35-4e03-8b7e-40643fc2357b.gif) ![Expand All](https://user-images.githubusercontent.com/15138747/207911159-b4f51b68-2b7b-4e67-9623-3cb6fbe09dd2.gif) ![Expand all and collapse all](https://user-images.githubusercontent.com/15138747/207912107-6c55d590-47c5-42b0-92be-2edbbab8738e.gif)

## Contents

- [Features](#Features)
- [Install](#Install)
- [Usage](#Usage)
    - [Implement and manage group expansion item](#Implement-and-manage-group-expansion-item)
    - [Group expansion and behaviors](#Group-expansion-and-behaviors)
        - [Expanded only current item and collapse others](#Expanded-only-current-item-and-collapse-others)
        - [Collapsed all items](#Collapsed-all-items)
        - [Expanded all items](#Expanded-all-items)
        - [Expanded all and collapsed all items](#Expanded-all-and-collapsed-all-items)
    - [Adding gap space between item](#Adding-gap-space-between-item)
    - [Specially control behavior of any expansion item](#Specially-control-behavior-of-any-expansion-item)
    - [Easy to customize expansion item](#Easy-to-customize-expansion-item)
- [Parameters](#Parameters)
    - [ExpansionTileGroup](#ExpansionTileGroup)
    - [ExpansionTileItem](#ExpansionTileItem)
- [Troubleshooting](#Troubleshooting)
    - [Hot reload not affect immediately](#Hot-reload-not-affect-immediately)
    - [Adding border radius](#Adding-border-radius)
    - [Adding shadow to item box](#Adding-shadow-to-item-box)
    
## Features

* Can manage group of `ExpansionTileItem` (`ExpansionTileItem` is extended from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html) of Flutter)
* Can control behaviors of items in group like: `ExpandOnlyCurrent`, `ExpandAll`, `CollapseAll`, `ExpandAllAndCollapseAll`
* Can listen changed behavior of any item in the group
* Can add the `Gap` space between items
* Easy control behaviors of `ExpansionTileItem` from anywhere
* Can easy custom or add decoration into `ExpansionTileItem` like `Border`, `BorderRadius`, `Shadow`, or `BoxDecoration`

## Install

In the `pubspec.yaml` of your flutter project, add the following dependency:

```yaml
dependencies:
  expansion_tile_group: <latest_version>
```

In your library add the following import:

```dart
import 'package:expansion_tile_group/expansion_tile_group.dart';
```

## Usage

### Implement and manage group expansion item

First you need to import the package:
```dart
import 'package:expansion_tile_group/expansion_tile_group.dart';
```
After that you need define the group of expansion item:
```dart
class ExpansionGroupExample extends StatelessWidget {
  const ExpansionGroupExample({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ExpansionTileGroup(
        children: []
    );
  }
}
```

Now you need put expansion item into this group, the children must be `ExpansionTileItem` or extends of `ExpansionTileItem` (`ExpansionTileBorderItem`, `ExpansionTileWithoutBorderItem`):

```dart
class ExpansionGroupExample extends StatelessWidget {
  const ExpansionGroupExample({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ExpansionTileGroup(
        children: [
          const ExpansionTileItem(
            title: Text('ExpansionTile item 1'),
            expendedBorderColor: Colors.blue,
            children: [
              Text('Title of expansion tile item 1'),
            ],
          ),
          const ExpansionTileBorderItem(
            title: Text('ExpansionTile item 2'),
            expendedBorderColor: Colors.blue,
            children: [
              Text('Title of expansion tile item 2'),
            ],
          ),
          const ExpansionTileWithoutBorderItem(
            title: Text('ExpansionTile item 3'),
            expendedBorderColor: Colors.blue,
            children: [
              Text('Title of expansion tile item 3'),
            ],
          ),
        ]
    );
  }
}
```

### Group expansion and behaviors

If you want to control behaviors of expansion items like below: 

#### Expanded only current item and collapse others
![Expand only current](https://user-images.githubusercontent.com/15138747/207908164-142a69d1-bc84-4d72-b1f9-a5f6f8d4fb9e.gif)

To **_expanded only current item and collapse all others_** just adding `toggleType` parameter with `expandOnlyCurrent` type:

```dart
class ExpansionGroupExample extends StatelessWidget {
  const ExpansionGroupExample({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ExpansionTileGroup(
        toggleType: ToggleType.expandOnlyCurrent,
        children: []
    );
  }
}
```

#### Collapsed all items
![Collapse all](https://user-images.githubusercontent.com/15138747/207909729-c63537c7-75d1-4b55-9617-821976e3dabf.gif)

To **_collapsed all items_** just adding `toggleType` parameter with `collapseAll` type:

```dart
class ExpansionGroupExample extends StatelessWidget {
  const ExpansionGroupExample({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ExpansionTileGroup(
        toggleType: ToggleType.collapseAll,
        children: []
    );
  }
}
```

#### Expanded all items
![Expand All](https://user-images.githubusercontent.com/15138747/207911159-b4f51b68-2b7b-4e67-9623-3cb6fbe09dd2.gif)

To **_expanded all items_** just adding `toggleType` parameter with `expandAll` type:

```dart
class ExpansionGroupExample extends StatelessWidget {
  const ExpansionGroupExample({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ExpansionTileGroup(
        toggleType: ToggleType.expandAll,
        children: []
    );
  }
}
```

#### Expanded all and collapsed all items
![Expand all and collapse all](https://user-images.githubusercontent.com/15138747/207912107-6c55d590-47c5-42b0-92be-2edbbab8738e.gif)

To **_Expanded all and collapsed all items_** just adding `toggleType` parameter with `expandAllAndCollapseALl` type:

```dart
class ExpansionGroupExample extends StatelessWidget {
  const ExpansionGroupExample({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ExpansionTileGroup(
        toggleType: ToggleType.expandAllAndCollapseALl,
        children: []
    );
  }
}
```

### Adding gap space between item

Add the `spaceBetweenItem` parameter to spacing between items:
```dart
class ExpansionGroupExample extends StatelessWidget {
  const ExpansionGroupExample({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ExpansionTileGroup(
        spaceBetweenItem: 16,
        children: []
    );
  }
}
```

### Specially control behavior of any expansion item
You can make expand or collapse any expansion item in anywhere.

First you need create a `itemKey` look like this:

```dart
import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ExampleExpandFromAnywherePage extends StatelessWidget {
  ExampleExpandFromAnywherePage({Key? key}) : super(key: key);
  
  final GlobalKey<ExpansionTileCustomState> itemKey = GlobalKey();
  
}
```

After that you set this `itemKey` into your `ExpansionTileItem` (or extends of this class) via `expansionKey` argument:

```dart
import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ExampleExpandFromAnywherePage extends StatelessWidget {
  ExampleExpandFromAnywherePage({Key? key}) : super(key: key);
  
  final GlobalKey<ExpansionTileCustomState> itemKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expand From Anywhere Page'),
      ),
      body: ExpansionTileBorderItem(
        title: const Text('ExpansionTile 0'),
        expansionKey: itemKey,
        children: [
          const Text('body content of expansion')
        ],
      ),
    );
  }
}
```

Now if you want to expand or collapse this expansion item, just call like this.

For expand:
```dart
itemKey.currentState?.expand();
```

For collapse:
```dart
itemKey.currentState?.collapse();
```

For Toggle:
```dart
itemKey.currentState?.toggle();
```

![Control behavior anywhere](https://user-images.githubusercontent.com/15138747/207922434-83d06656-2c35-4e03-8b7e-40643fc2357b.gif)

### Easy to customize expansion item

![Custom expansion](https://user-images.githubusercontent.com/15138747/207923692-ebb70b23-7067-4fdf-af5c-09f3c1a537be.gif)

## Parameters

### ExpansionTileGroup
| Parameter            | Description                                                  |
|----------------------|--------------------------------------------------------------|
| `key`                | Controls how one widget replaces another widget in the tree. |
| `children`*             | The children in this group, `ExpansionTileItem`            |
| `toggleType`            | Provide the behavior of items in this group, it's `enum`     |
| `spaceBetweenItem`      | The gap space between item in the group                      |
| `onExpansionItemChanged`        | Listen the changed behavior of any item in the group         |

### ExpansionTileItem
| Parameter           | Description                                                                                                                                                                                      |
|---------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `key`               | Controls how one widget replaces another widget in the tree.                                                                                                                                     |
| `title`*            | The primary content of the list item for the resulting `Text` widget ,exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                            |
| `leading`           | A widget to display before the title, exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                                                            |
| `subtitle`       | Additional content displayed below the title. Typically a Text widget, exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                           |
| `onExpansionChanged`       | Called when the tile expands or collapses, exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                                                       |
| `children`       | The widgets that are displayed when the tile expands, exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                                            |
| `trailing`       | A widget to display after the title., exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                                                            |
| `initiallyExpanded`       | Specifies if the list tile is initially expanded (`true`) or collapsed (`false`, the `default`), exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html) |
| `maintainState`       | Specifies whether the state of the children is maintained when the tile expands and collapses, exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)   |
| `tilePadding`       | Specifies padding for the ListTile., exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                                                             |
| `expandedCrossAxisAlignment`       | Specifies the alignment of each child within children when the tile is expanded, exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                 |
| `expandedAlignment`       | Specifies the alignment of children, which are arranged in a column when the tile is expanded, exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)   |
| `childrenPadding`       | Specifies padding for children, exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                                                                  |
| `backgroundColor`       | The color to display behind the sublist when expanded., exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                                          |
| `collapsedBackgroundColor`       | The color to display behind the sublist when Collapse., exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                                          |
| `textColor`       | The color of the tile's titles when the sublist is expanded., exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                                    |
| `collapsedTextColor`       | The color of the tile's titles when the sublist is collapse., exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                                    |
| `iconColor`       | The icon color of tile's expansion arrow icon when the sublist is expanded., exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                     |
| `collapsedIconColor`       | The icon color of tile's expansion arrow icon when the sublist is collapsed., exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                    |
| `controlAffinity`       | Typically used to force the expansion arrow icon to the tile's leading or trailing edge., exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)        |
| `clipBehavior`       | The clip behavior when `decoration` is not null. Default is `Clip.hardEdge`                                                                                                                      |
| `decoration`       | The decoration to paint behind the child.                                                                                                                                                        |
| `borderRadius`       | If non-null, the corners of this box are rounded by this BorderRadius.Applies only to boxes with rectangular shapes; ignored if shape is not BoxShape.rectangle                                  |
| `border`       | A border to draw above the background color, gradient, or image.Follows the shape and borderRadius.                                                                                              |
| `boxShadow`       | A list of shadows cast by this box behind the box. The shadow follows the shape of the box                                                                                                       |
| `collapsedBorderColor`       | The color to display border box when collapsed.                                                                                                                                                  |
| `expendedBorderColor`       | The color to display border box when expanded.                                                                                                                                                   |
| `isHasTopBorder`       | Show `top` border side                                                                                                                                                                             |
| `isHasBottomBorder`       | Show `bottom` border side                                                                                                                                                                          |
| `isHasLeftBorder`       | Show `left` border side                                                                                                                                                                            |
| `isHasRightBorder`       | Show `right` border side                                                                                                                                                                           |

## Troubleshooting

### Hot reload not affect immediately
If you are using `ExpansionTileGroup` wrapping `ExpansionTileItem` items and you changed some configs of `ExpansionTileItem`, the hot reload will not immediately affect to UI, you must use the `hot restart` to see the changed. Because the items is wrapped `ExpansionTileGroup` will be auto generated the `GlobalKey` for each item. So when you do `hot reload` it will not affect immediately to UI.

### Adding border radius
When you want to adding border radius, please notice about the border side of box. Because the border radius only uniform borders.
You can check this post here [uniform borders](https://stackoverflow.com/questions/58812778/a-borderradius-can-only-be-given-for-uniform-borders)

### Adding shadow to item box
When you want to adding shadow into item box, you need to add the `backgroundColor` and `collapsedBackgroundColor` into item, because they are using `transparent` by default 

## FAQ

You can read the FAQ here: [FAQ](https://github.com/congthanhng/Expansion-Tile-Group/wiki/FAQ)

## Sponsoring

If this package or any other package I created is helping you, please consider to sponsor me so that I can take time to update this packages.

<a href="https://www.buymeacoffee.com/congthanhng" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>

OR

![7ezgif-5-20a8a8001a](https://user-images.githubusercontent.com/15138747/207929534-6ca20aea-62ae-405a-81a4-0f0139f69467.png)

## Contributions

Feel free to contribute to this project.

If you find a bug or want a feature, but don't know how to fix/implement it, please fill an [issue](https://github.com/congthanhng/Expansion-Tile-Group/issues).  
If you fixed a bug or implemented a feature, please send a [pull request](https://github.com/congthanhng/Expansion-Tile-Group/pulls).