`ExpansionTileItem`s overcomes the limitations of the standard [ExpansionTile][ExpansionTile] widget by incorporating highly customizable widgets that fully `extends` its functionality.
Moreover, they also have awesome features.

Check out [Example](https://congthanhng.github.io/ExpansionTileGroupExample/)

## Supported types of `ExpansionTileItem`

By default, `ExpansionTileItem` will look exactly standard [ExpansionTile][ExpansionTile]

Also, we have supported you some kinds of `ExpansionTileItem` that help you easier define desirable UIs.

`ExpansionTileOutlined` , `ExpansionTileFlat`, `ExpansionTileLeaf`, `ExpansionTileCard`

To use them, there are 2 ways:
- Call directly: `ExpansionTileOutlined` , `ExpansionTileFlat`, `ExpansionTileLeaf`, `ExpansionTileCard`.
- Call from `ExpansionTileItem`: `ExpansionTileItem.outlined`, `ExpansionTileItem.flat`, `ExpansionTileItem.leaf`, `ExpansionTileItem.card`.

For Example:

```dart
import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ExampleExpandFromAnywhere extends StatelessWidget {
 ExampleExpandFromAnywherePage({Key? key}) : super(key: key);
 
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     body: ExpansionTileItem.outlined(
       title: const Text('ExpansionTile 0'),
       children: [
         const Text('body content of expansion')
       ],
     ),
   );
 }
}
```

More customizes of `ExpansionTileItem` you can check out the demo below, pay your attention into the title in each widget:

![Custom expansion](https://user-images.githubusercontent.com/15138747/207923692-ebb70b23-7067-4fdf-af5c-09f3c1a537be.gif)

## Easy control behaviors of an ExpansionTileItem from anywhere
You can expand/collapse an `ExpansionTileItem` from anywhere in the app.

First you need create a `GlobalKey<ExpansionTileCoreState>`. 

For example:

```dart
import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ExampleExpandFromAnywherePage extends StatelessWidget {
 ExampleExpandFromAnywherePage({Key? key}) : super(key: key);

 final GlobalKey<ExpansionTileCoreState> itemKey = GlobalKey();

}
```

Then you set this `itemKey` into any type of `ExpansionTileItem` that you want to control the behaviors:

```dart
import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ExampleExpandFromAnywherePage extends StatelessWidget {
 ExampleExpandFromAnywherePage({Key? key}) : super(key: key);

 final GlobalKey<ExpansionTileCoreState> itemKey = GlobalKey();

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text('Expand From Anywhere Page'),
     ),
     body: ExpansionTileItem(
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

Now if you want to expand or collapse this `ExpansionTileItem`, just call:

To expand:
```dart
itemKey.currentState?.expand()
```

To collapse:
```dart
itemKey.currentState?.collapse()
```

To Toggle:
```dart
itemKey.currentState?.toggle()
```

![Control behavior anywhere](https://user-images.githubusercontent.com/15138747/207922434-83d06656-2c35-4e03-8b7e-40643fc2357b.gif)

## Remove completely trailing
The standard [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html) widget does NOT have anyway to remove completely the `trailing` (the arrow icon is removed but the area is NOT), so that in some case, the `title` is not extended the full width.

With our package, just set `isHasTrailing` is `false`, the `trailing` will be removed completely (that includes bound area, arrow icon).

## Force behavior
You can prevent `ExpansionTileItem` to expand by adding `isEnableExpanded` is `false`.
It is very helpful when you want to complete some tasks before expand the item.

Notice: When you wrap items with `ExpansionTileGroup` to use group feature, the `isEnableExpanded` will be not worked perfectly.
The reason for that is the children in this group are always automatically created a new `key` for the group can manage the behaviors of them,
As the result, whenever you rebuild the widget, it will not change the value of `isEnableExpanded`.

## Remove completely default vertical title padding
Now you can remove completely default vertical title padding by setting `isDefaultVerticalPadding` is `false`

## Hide Subtitle on Expanded view
Now you can hide the subtitle whenever the view is expanded by setting `isHideSubtitleOnExpanded` is `true`

## Change Trailing Icon with keeping default rotate animation
Now you can change default trailing icon by calling `trailingIcon`, it is retrieve a `Widget`

## ExpansionTileItem parameters
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
| `isEnableExpanded`           | Force item expand or NOT                                                                                                                                                                         |
| `isDefaultVerticalPadding`   | Remove completely default vertical title padding                                                                                                                                                 |
| `isHideSubtitleOnExpanded`   | Hide Subtitle when view is expanded                                                                                                                                                              |
| `trailingIcon`               | Change default trailing icon with keeping rotate animation                                                                                                                                       |


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
[ForceBehavior]: https://github.com/congthanhng/Expansion-Tile-Group/issues/22