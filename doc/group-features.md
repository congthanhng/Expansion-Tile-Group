`ExpansionTileItem`s can be seamlessly grouped and their interactions easily managed, offering you unparalleled control and flexibility.

Check out [Example](https://congthanhng.github.io/ExpansionTileGroupExample/)

## Get Started

To group and manage `ExpansionTileItem`, there are 2 options to do that:
- Option 1: Wrap them inside `ExpansionTileGroup` widget.
- Option 2: Using `ExansionGroupController`

## Behaviors between items in the group
Before we start you should to know the type of behaviors between items in group.
We defined an enum to manage them `ToggleType`. This enum contains almost common case you will be met:

| `toggleType` type        | Description                                                                                              |
|--------------------------|----------------------------------------------------------------------------------------------------------|
| `none`                   | It's default. Do nothing if an item in group changed behavior.                                           |
| `expandOnlyCurrent`      | When an item in group is expanded, would collapse all the others.                                        |
| `collapseAll`            | Collapse all items if any item in group is collapsed.                                                    |
| `expandAll`              | Expanded all items if any item in group is expanded.                                                     |
| `expandAllOrCollapseAll` | Expanded/Collapsed all items if any item in group is Expanded/Collapsed.                                 |
| `expandAlwaysCurrent`    | Expand the tapped item and collapse all others, but still remain expanding when tapping this item again. |


|                                                                    |                                                                              |
|--------------------------------------------------------------------|------------------------------------------------------------------------------|
| **ToggleType.expandOnlyCurrent**   <br/> ![Image][ExpandedCurrent] | **ToggleType.collapseAll**          <br/>![Image][CollapseAll]               |
| **ToggleType.expandAll** <br/>![Image][ExpandedAll]                | **ToggleType.expandAllOrCollapseAll** <br/>![Image][ExpandedAndCollapsedAll] |


## Let implement with Option 1: Wrap them inside `ExpansionTileGroup` widget.
You have a list of `ExpansionTileItem` and want to group them, just simply wrap them into `ExpansionTileGroup`

Fully code example:

```dart
class ExpansionGroupExample extends StatelessWidget {
 const ExpansionGroupExample({Key? key}) : super(key: key);
 @override
 Widget build(BuildContext context) {
   return ExpansionTileGroup(
       toggleType: ToggleType.expandOnlyCurrent,
       onExpansionItemChanged: (index, isExpanded) {
         //index: the position of item that just changed state,
         //isExpanded: present current behavior:
         //- true: the item is expanding,
         //- false: the item is collapsing
       },
       spaceBetweenItem: 16,
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
That's it! 

### ExpansionTileGroup parameters
| Parameter                | Description                                                  |
|--------------------------|--------------------------------------------------------------|
| `key`                    | Controls how one widget replaces another widget in the tree. |
| `children`*              | The children in this group, `ExpansionTileItem`              |
| `toggleType`             | Provide the behaviors of items in this group, it's `enum`    |
| `spaceBetweenItem`       | The gap space between item in the group                      |
| `onExpansionItemChanged` | Listen the changed behavior of any item in the group         |

## Let implement with Option 2: Using `ExansionGroupController`
Why do we have option 2 while option 1 work well?

Well, the Option 1 only works with List of `ExpansionTileItem`. 

In a case, you have a list of Widget and each widget contains one or many `ExpansionTileItem` inside. That the Option 1 can't handle this case.

So we have the Option 2 by using `ExansionGroupController`

Step by Step:

Step 1: Define `ExpansionGroupController`

```dart
controller = ExpansionGroupController(
  length: 6, toggleType: ToggleType.expandAllOrCollapseAll);
```
The `lenth` is required.

The `toggleType` as mentioned above. Default is `ToggleType.none`

Step 2: Pass `controller` and `index` in each `ExpansionTileItem`

```dart
ExpansionTileOutlined(
                controller: controller,
                index: 0,
                title: Text('HELLO, I\'m index: 0'),
                children: [])
```

Make sure the index is always less than the `length` because `index` always counted from `0`.

To list itemChanged in group just add this listener;

```dart
controller.addItemChangedListener(
      (index, isExpanded) {
        debugPrint('index: $index, isExpanded: $isExpanded');
      },
    );
```

Finally, don't forget to dispose the controller
```dart
controller.dispose();
```

Below example code shows you a List of `ExpansionTileItem` wrapped by a ListView and a `ExpansionTileItem` wrapped by a Container.

```dart
import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class CustomGroupWithController extends StatefulWidget {
  const CustomGroupWithController({Key? key}) : super(key: key);

  @override
  State<CustomGroupWithController> createState() =>
      _CustomGroupWithControllerState();
}

class _CustomGroupWithControllerState extends State<CustomGroupWithController> {
  late final ExpansionGroupController controller;

  @override
  void initState() {
    controller = ExpansionGroupController(
        length: 6, initialIndex: 0, toggleType: ToggleType.expandAllOrCollapseAll);

    controller.addItemChangedListener(
      (index, isExpanded) {
        debugPrint('index: $index, isExpanded: $isExpanded');
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 8,
            ),
            shrinkWrap: true,
            itemBuilder: (context, index) => ExpansionTileOutlined(
                controller: controller,
                index: index,
                title: Text('HELLO, I\'m index: $index of ListView'),
                children: [sampleContent]),
            itemCount: 5),
        Container(
          color: Colors.yellow,
          width: 250,
          child: ExpansionTileFlat(
              controller: controller,
              index: 5,
              title:
              const Text('HELLO, I\'m index: 5 and wrap by Container'),
              children: [sampleContent]),
        )
      ],
    );
  }

  Widget get sampleContent => Material(
        child: InkWell(
          onTap: () {},
          child: const Text(
              ''' Nullam eleifend ultrices tortor, sit amet gravida sapien cursus vitae. Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
        ),
      );
}

```

That's it! Hope you work well!


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