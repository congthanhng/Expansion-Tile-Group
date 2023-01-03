# expansion_tile_group

A Flutter widget that can be a manager group of custom expansion tiles.

<a href="https://pub.dev/packages/expansion_tile_group" target="_blank"><img src="https://img.shields.io/pub/v/expansion_tile_group" ></a>
<a href="https://pub.dev/packages/expansion_tile_group/score" target="_blank"><img src="https://img.shields.io/pub/likes/expansion_tile_group" ></a>
<a href="https://pub.dev/packages/expansion_tile_group/score" target="_blank"><img src="https://img.shields.io/pub/points/expansion_tile_group" ></a>
<a href="https://pub.dev/packages/expansion_tile_group/score" target="_blank"><img src="https://img.shields.io/pub/popularity/expansion_tile_group" ></a>

<a href="https://pub.dev/packages/expansion_tile_group" target="_blank"><img src="https://img.shields.io/badge/Flutter-Widgets-blue" ></a>
<a href="https://github.com/congthanhng/Expansion-Tile-Group" target="_blank"><img src="https://img.shields.io/badge/Github-Expansion--Tile--Group-black" ></a>
<a href="https://github.com/congthanhng/Expansion-Tile-Group/actions/workflows/dart.yml" target="_blank"><img src="https://github.com/congthanhng/Expansion-Tile-Group/actions/workflows/dart.yml/badge.svg" ></a>

## Overview
![Image][ItemTypes]
![Image][SpecialItemBehaviors]
![Image][ExpandedCurrent]
![Image][CollapseAll]
![Image][ExpandedAll]
![Image][ExpandedAndCollapsedAll]
## Contents

- [Features](#features)
- [Introduce](#introduce)
- [Install](#install)
- [Usage](#usage)
  - [Implement and manage group of expansion items](#implement-and-manage-group-of-expansion-items)
  - [Behaviors between items in the group](#behaviors-between-items-in-the-group)
  - [Listen the changed of any item in the group](#listen-the-changed-of-any-item-in-the-group)
  - [Adding space between items](#adding-space-between-items)
  - [Easy control behaviors of an ExpansionTileItem from anywhere](#easy-control-behaviors-of-an-ExpansionTileItem-from-anywhere)
  - [Easy to customize expansion item](#easy-to-customize-expansion-item)
  - [Remove completely trailing](#remove-completely-trailing)
- [Parameters](#parameters)
  - [ExpansionTileGroup](#expansiontilegroup)
  - [ExpansionTileItem](#expansiontileitem)
- [Troubleshooting](#troubleshooting)
  - [Hot reload not affect immediately](#hot-reload-not-affect-immediately)
  - [Adding border radius](#adding-border-radius)
  - [Adding shadow to item box](#adding-shadow-to-item-box)
  - [Condition between trailing and isHasTrailing](#condition-between-trailing-and-isHasTrailing)
  - [BoxShadow](#boxshadow)
- [FAQ](#faq)
- [Sponsoring](#sponsoring)
- [Contributions](#contributions)

## Features

* Can group `ExpansionTileItem`s together and manage them (`ExpansionTileItem` is extended from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html) of Flutter).
* Support and control many kinds of behaviors between items in the group like: `ExpandOnlyCurrent`, `ExpandAll`, `CollapseAll`, `ExpandAllAndCollapseAll`.
* Can listen to any item changed behavior in the group.
* Can add the space between items in the group.
* Easy control behaviors of an `ExpansionTileItem` from anywhere.
* Can easily custom or add decoration into an `ExpansionTileItem` with `Border`, `BorderRadius`, `Shadow`, or `BoxDecoration`.
* Can remove completely the `trailing`, included: area, arrow icon. So that the `title` can be extended the width. Just using `isHasTrailing`.

## Introduce

The [ExpansionTile][ExpansionTile] of Flutter has a lot of limits and is difficult to customize with these features above.

So I created `ExpansionTileItem` to remove these limits.

The `ExpansionTileItem` extends all the properties and features core of [ExpansionTile][ExpansionTile], so if you are using [ExpansionTile][ExpansionTile], you can easily change to my package without changing any properties.

Addition, by using `ExpansionTileItem`, you can easily group and manage them by wrapping them into `ExpansionTileGroup`.

And there are some types of `ExpansionTileItem` like: `ExpansionTileBorderItem`, `ExpansionTileWithoutBorderItem`, I will add more in the future, or you can create the new one like this.

```dart
class YourExpansionTileItem extends ExpansionTileItem {
 YourExpansionTileItem(
         //your custom properties
         ):super(
   //call correspond super properties
 )
}
```

**I'd really appreciate it if you know any common ExpansionTile UIs and give the PR.**

More detail: [ExpansionTileItem](#expansiontileitem), [ExpansionTileGroup](#expansiontilegroup).

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

### Implement and manage group of expansion items

First you need to import the package:
```dart
import 'package:expansion_tile_group/expansion_tile_group.dart';
```
After that you need to define the group of expansion items:
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

Now you need to put expansion items into this group, the children must be `ExpansionTileItem` or extends of `ExpansionTileItem` (`ExpansionTileBorderItem`, `ExpansionTileWithoutBorderItem`):

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

### Behaviors between items in the group

You can control behaviors between items in the group with adding `toggleType` parameter to `ExpansionTileGroup`like this:

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

There are many types of `toggleType`, it support almost common case you will be met:

| `toggleType` type         | Description                                                    |
|---------------------------|----------------------------------------------------------------|
| `none`                    | It's default. Do nothing if an item changed behavior           |
| `expandOnlyCurrent`       | When an item is expanded, would collapse all the others        |
| `collapseAll`             | Collapse all items if any item is collapsed                    |
| `expandAll`               | Expanded all items if any item is expanded                     |
| `expandAllAndCollapseAll` | Expanded/Collapsed all items if any item is Expanded/Collapsed |

|                                                                    |                                                                               |
|--------------------------------------------------------------------|-------------------------------------------------------------------------------|
| **ToggleType.expandOnlyCurrent**   <br/> ![Image][ExpandedCurrent] | **ToggleType.collapseAll**          <br/>![Image][CollapseAll]                |
| **ToggleType.expandAll** <br/>![Image][ExpandedAll]                | **ToggleType.expandAllAndCollapseAll** <br/>![Image][ExpandedAndCollapsedAll] |

### Listen the changed of any item in the group

Adding the `onExpansionItemChanged` parameter into `ExpansionTileGroup` to listen the changed of any item in the group:

```dart
class ExpansionGroupExample extends StatelessWidget {
 const ExpansionGroupExample({Key? key}) : super(key: key);
 @override
 Widget build(BuildContext context) {
   return ExpansionTileGroup(
       onExpansionItemChanged: (index, isExpanded) {
         //index is position of item in the group,
         //isExpanded present current behavior:
         //- true is expanding,
         //- false is collapsing
       },
       children: []
   );
 }
}
```

### Adding space between items

Adding the `spaceBetweenItem` parameter into `ExpansionTileGroup` to spacing between items:

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

### Easy control behaviors of an ExpansionTileItem from anywhere
You can expand/collapse any `ExpansionTileItem` anywhere in the app.

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

Now if you want to expand or collapse this `ExpansionTileItem`, just call like this.

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

### Remove completely trailing
In [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html) of Flutter, don't have anyway to remove completely the `trailing` (the arrow icon is removed but the area is NOT), so that in some case, the `title` is not extended the full width.

With this package, just set `isHasTrailing` is `false`, the `trailing` will be removed completely, like: area, arrow icon.

## Parameters

### ExpansionTileGroup
| Parameter                | Description                                                  |
|--------------------------|--------------------------------------------------------------|
| `key`                    | Controls how one widget replaces another widget in the tree. |
| `children`*              | The children in this group, `ExpansionTileItem`              |
| `toggleType`             | Provide the behavior of items in this group, it's `enum`     |
| `spaceBetweenItem`       | The gap space between item in the group                      |
| `onExpansionItemChanged` | Listen the changed behavior of any item in the group         |

### ExpansionTileItem
| Parameter                    | Description                                                                                                                                                                                      |
|------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `key`                        | Controls how one widget replaces another widget in the tree.                                                                                                                                     |
| `title`*                     | The primary content of the list item for the resulting `Text` widget ,exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                            |
| `leading`                    | A widget to display before the title, exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                                                            |
| `subtitle`                   | Additional content displayed below the title. Typically a Text widget, exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                           |
| `onExpansionChanged`         | Called when the tile expands or collapses, exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                                                       |
| `children`                   | The widgets that are displayed when the tile expands, exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                                            |
| `trailing`                   | A widget to display after the title., exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                                                            |
| `initiallyExpanded`          | Specifies if the list tile is initially expanded (`true`) or collapsed (`false`, the `default`), exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html) |
| `maintainState`              | Specifies whether the state of the children is maintained when the tile expands and collapses, exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)   |
| `tilePadding`                | Specifies padding for the ListTile., exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                                                             |
| `expandedCrossAxisAlignment` | Specifies the alignment of each child within children when the tile is expanded, exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                 |
| `expandedAlignment`          | Specifies the alignment of children, which are arranged in a column when the tile is expanded, exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)   |
| `childrenPadding`            | Specifies padding for children, exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                                                                  |
| `backgroundColor`            | The color to display behind the sublist when expanded., exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                                          |
| `collapsedBackgroundColor`   | The color to display behind the sublist when Collapse., exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                                          |
| `textColor`                  | The color of the tile's titles when the sublist is expanded., exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                                    |
| `collapsedTextColor`         | The color of the tile's titles when the sublist is collapse., exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                                    |
| `iconColor`                  | The icon color of tile's expansion arrow icon when the sublist is expanded., exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                     |
| `collapsedIconColor`         | The icon color of tile's expansion arrow icon when the sublist is collapsed., exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)                    |
| `controlAffinity`            | Typically used to force the expansion arrow icon to the tile's leading or trailing edge., exactly from [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html)        |
| `clipBehavior`               | The clip behavior when `decoration` is not null. Default is `Clip.hardEdge`                                                                                                                      |
| `decoration`                 | The decoration to paint behind the child.                                                                                                                                                        |
| `borderRadius`               | If non-null, the corners of this box are rounded by this BorderRadius.Applies only to boxes with rectangular shapes; ignored if shape is not BoxShape.rectangle                                  |
| `border`                     | A border to draw above the background color, gradient, or image.Follows the shape and borderRadius.                                                                                              |
| `boxShadow`                  | A list of shadows cast by this box behind the box. The shadow follows the shape of the box                                                                                                       |
| `collapsedBorderColor`       | The color to display the border box when collapsed.                                                                                                                                              |
| `expendedBorderColor`        | The color to display the border box when expanded.                                                                                                                                               |
| `isHasTopBorder`             | Show `top` border side  or NOT                                                                                                                                                                   |
| `isHasBottomBorder`          | Show `bottom` border side  or NOT                                                                                                                                                                |
| `isHasLeftBorder`            | Show `left` border side  or NOT                                                                                                                                                                  |
| `isHasRightBorder`           | Show `right` border side or NOT                                                                                                                                                                  |
| `isHasTrailing`              | Show trailing widget and it's area or NOT                                                                                                                                                        |

## Troubleshooting

### Hot reload not affect immediately
If you are using `ExpansionTileGroup` wrapping `ExpansionTileItem` items and you changed some configs of `ExpansionTileItem`, the hot reload will not immediately affect to UI, you must use the `hot restart` to see the changed. Because the items are wrapped, `ExpansionTileGroup` will auto generate the `GlobalKey` for each item. So when you do `hot reload` it will not affect the UI.

### Adding border radius
When you want to add border radius, please notice the border side of the box. Because the border radius only has uniform borders.
You can check this post here [uniform borders](https://stackoverflow.com/questions/58812778/a-borderradius-can-only-be-given-for-uniform-borders)

### Adding shadow to item box
When you want to add a shadow into an item box, you need to add the `backgroundColor` and `collapsedBackgroundColor` into the item, because they are using `transparent` by default.

### Condition between trailing and isHasTrailing
Not necessary set `trailing` property when `isHasTrailing` property is set false.

### BoxShadow
By default the `backgroundColor` and `collapseBackgroundColor` are transparent, so you need to add value to both of them before defining `boxShadow`.

## FAQ

You can read the FAQ here: [FAQ](https://github.com/congthanhng/Expansion-Tile-Group/wiki/FAQ)

## Sponsoring

If this package or any other package I created is helping you, please consider sponsoring me so that I can take time to update this package.

<a href="https://www.buymeacoffee.com/congthanhng" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>

OR

![7ezgif-5-20a8a8001a](https://user-images.githubusercontent.com/15138747/207929534-6ca20aea-62ae-405a-81a4-0f0139f69467.png)

## Contributions

Feel free to contribute to this project.

If you find a bug or want a feature, but don't know how to fix/implement it, please fill an [issue](https://github.com/congthanhng/Expansion-Tile-Group/issues).
If you fixed a bug or implemented a feature, please send a [pull request](https://github.com/congthanhng/Expansion-Tile-Group/pulls).

[ExpansionTile]: https://api.flutter.dev/flutter/material/ExpansionTile-class.html
[ItemTypes]: https://user-images.githubusercontent.com/15138747/208438578-d4bd3321-67cc-4844-b381-c8f29e367baa.gif
[SpecialItemBehaviors]: https://user-images.githubusercontent.com/15138747/208438575-8a9acded-1188-494e-9b01-9ac061c6d911.gif
[ExpandedCurrent]: https://user-images.githubusercontent.com/15138747/208438573-c3ee74c3-b28d-4d73-b224-dc1e7f4f2211.gif
[CollapseAll]: https://user-images.githubusercontent.com/15138747/208438577-035b4815-2bfc-4cdb-92ff-3e643269289d.gif
[ExpandedAll]: https://user-images.githubusercontent.com/15138747/208438574-65d53822-5289-4d56-82f3-2a3d99bf49d8.gif
[ExpandedAndCollapsedAll]: https://user-images.githubusercontent.com/15138747/208438576-e7725572-5b8d-4d43-8033-aef2c3f2ce92.gif
[MainCI]: https://github.com/congthanhng/Expansion-Tile-Group/actions/workflows/dart.yml/badge.svg
[PubSource]: https://img.shields.io/pub/v/expansion_tile_group
[PubLike]: https://img.shields.io/pub/likes/expansion_tile_group
[PubPoint]: https://img.shields.io/pub/points/expansion_tile_group
[PubPopular]: https://img.shields.io/pub/popularity/expansion_tile_group