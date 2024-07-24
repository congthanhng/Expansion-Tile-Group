
If you find a bug or want a feature, but don't know how to fix/implement it, please fill an [issue](https://github.com/congthanhng/Expansion-Tile-Group/issues).
If you fixed a bug or implemented a feature, please send a [pull request](https://github.com/congthanhng/Expansion-Tile-Group/pulls).

## Hot reload not affect immediately
If you are using `ExpansionTileGroup` wrapping `ExpansionTileItem` items and you changed some configs of `ExpansionTileItem`, the hot reload will not immediately affect to UI, you must use the `hot restart` to see the changed. Because the items are wrapped, `ExpansionTileGroup` will auto generate the `GlobalKey` for each item. So when you do `hot reload` it will not affect the UI.

## Adding border radius
When you want to add border radius, please notice the border side of the box. Because the border radius only has uniform borders.
You can check this post here [uniform borders](https://stackoverflow.com/questions/58812778/a-borderradius-can-only-be-given-for-uniform-borders)

## Adding shadow to item box
When you want to add a shadow into an item box, you need to add the `backgroundColor` and `collapsedBackgroundColor` into the item, because they are using `transparent` by default.

## Condition between trailing and isHasTrailing
Not necessary set `trailing` property when `isHasTrailing` property is set false.

## BoxShadow
By default the `backgroundColor` and `collapseBackgroundColor` are transparent, so you need to add value to both of them before defining `boxShadow`.
