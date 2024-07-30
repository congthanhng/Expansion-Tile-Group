`ExpansionTileItem`s can be seamlessly grouped and their interactions easily managed, offering you unparalleled control and flexibility.

Check out [Example](https://congthanhng.github.io/ExpansionTileGroupExample/)

## Get Started

You have defined a list of `ExpansionTileItem`, to group them just simply wrap them into `ExpansionTileGroup` widget.

For example: 

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
         const ExpansionTileOutlined(
           title: Text('ExpansionTile item 2'),
           expendedBorderColor: Colors.blue,
           children: [
             Text('Title of expansion tile item 2'),
           ],
         ),
         const ExpansionTileFlat(
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

## Behaviors between items in the group

You can control behaviors between items in the group by adding `toggleType` parameter to `ExpansionTileGroup`like this:

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

| `toggleType` type        | Description                                                                                  |
|--------------------------|----------------------------------------------------------------------------------------------|
| `none`                   | It's default. Do nothing if an item changed behavior                                         |
| `expandOnlyCurrent`      | When an item in group is expanded, would collapse all the others                             |
| `collapseAll`            | Collapse all items if any item in group is collapsed                                         |
| `expandAll`              | Expanded all items if any item in group is expanded                                          |
| `expandAllOrCollapseAll` | Expanded/Collapsed all items if any item in group is Expanded/Collapsed                      |
| `expandAlwaysCurrent`    | Expand tapped item and collapse all others, but not collapse the expanded one when tap again |


|                                                                    |                                                                              |
|--------------------------------------------------------------------|------------------------------------------------------------------------------|
| **ToggleType.expandOnlyCurrent**   <br/> ![Image][ExpandedCurrent] | **ToggleType.collapseAll**          <br/>![Image][CollapseAll]               |
| **ToggleType.expandAll** <br/>![Image][ExpandedAll]                | **ToggleType.expandAllOrCollapseAll** <br/>![Image][ExpandedAndCollapsedAll] |

## Listen the changed of any item in the group

Adding the `onExpansionItemChanged` parameter into `ExpansionTileGroup` to listen the changed of any item in the group:

```dart
class ExpansionGroupExample extends StatelessWidget {
 const ExpansionGroupExample({Key? key}) : super(key: key);
 @override
 Widget build(BuildContext context) {
   return ExpansionTileGroup(
       onExpansionItemChanged: (index, isExpanded) {
         //index: the position of item that just changed state,
         //isExpanded: present current behavior:
         //- true: the item is expanding,
         //- false: the item is collapsing
       },
       children: []
   );
 }
}
```

## Adding space between items

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

## ExpansionTileGroup parameters
| Parameter                | Description                                                  |
|--------------------------|--------------------------------------------------------------|
| `key`                    | Controls how one widget replaces another widget in the tree. |
| `children`*              | The children in this group, `ExpansionTileItem`              |
| `toggleType`             | Provide the behavior of items in this group, it's `enum`     |
| `spaceBetweenItem`       | The gap space between item in the group                      |
| `onExpansionItemChanged` | Listen the changed behavior of any item in the group         |


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