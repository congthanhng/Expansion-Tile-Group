
If you find a bug or want a feature, but don't know how to fix/implement it, please fill an [issue](https://github.com/congthanhng/Expansion-Tile-Group/issues).
If you fixed a bug or implemented a feature, please send a [pull request](https://github.com/congthanhng/Expansion-Tile-Group/pulls).

## Hot reload not affect immediately when use group feature.
If using `ExpansionTileGroup`, the hot reload will not immediately affect to UI of children in this group.
You should use the `hot restart` to see the changed. The reason why is the `ExpansionTileGroup` will auto generate `GlobalKey` for each item. With these keys group can easily control behaviors of items,
but it not good for `hot reload`, you know.

## Adding border radius
When you want to add `BorderRadius`, please notice to the `BorderSide` of the box. The `BorderRadius` must has uniform borders.
You can check this post here [uniform borders](https://stackoverflow.com/questions/58812778/a-borderradius-can-only-be-given-for-uniform-borders)

## Adding shadow to item box
When you want to add a shadow into an item box, you need to add the `backgroundColor` and `collapsedBackgroundColor` into the item, because they are using `transparent` by default.

## Conditions between trailing, isHasTrailing, trailingIcon
- When `isHasTrailing` is set `false`, no need to define `trailing`.
- When `trailing` is set, no need to define `trailingIcon`