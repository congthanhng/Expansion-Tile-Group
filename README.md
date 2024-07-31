# expansion_tile_group

Enhance your Flutter apps with this advanced ExpansionTile package! This package overcomes the limitations of the standard ExpansionTile widget by incorporating highly customizable widgets that fully `extends` its functionality. 
These widgets can be seamlessly grouped and their interactions easily managed, offering you unparalleled control and flexibility.

<a href="https://pub.dev/packages/expansion_tile_group" target="_blank"><img src="https://img.shields.io/pub/v/expansion_tile_group" ></a>
<a href="https://pub.dev/packages/expansion_tile_group/score" target="_blank"><img src="https://img.shields.io/pub/likes/expansion_tile_group" ></a>
<a href="https://pub.dev/packages/expansion_tile_group/score" target="_blank"><img src="https://img.shields.io/pub/points/expansion_tile_group" ></a>
<a href="https://pub.dev/packages/expansion_tile_group/score" target="_blank"><img src="https://img.shields.io/pub/popularity/expansion_tile_group" ></a>

<a href="https://pub.dev/packages/expansion_tile_group" target="_blank"><img src="https://img.shields.io/badge/Flutter-Widgets-blue" ></a>
<a href="https://github.com/congthanhng/Expansion-Tile-Group" target="_blank"><img src="https://img.shields.io/badge/Github-Expansion--Tile--Group-black" ></a>
<a href="https://github.com/congthanhng/Expansion-Tile-Group/actions/workflows/dart.yml" target="_blank"><img src="https://github.com/congthanhng/Expansion-Tile-Group/actions/workflows/dart.yml/badge.svg" ></a>

## Overview
![Image][ItemTypes] ![Image][SpecialItemBehaviors]
![Image][ExpandedCurrent] ![Image][CollapseAll]
![Image][ExpandedAll] ![Image][ExpandedAndCollapsedAll]

Check out [Example](https://congthanhng.github.io/ExpansionTileGroupExample/)

Or our [Documentation](https://pub.dev/documentation/expansion_tile_group/)

## Features

Item features: 
* `ExpansionTileItem` fully `extends` standard [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html) functionality.
* Supported many commonly type of `ExpansionTileItem` UIs: `ExpansionTileOutlined`, `ExpansionTileFlat`, `ExpansionTileLeaf`, `ExpansionTileCard`.
* Can easily control behaviors of an `ExpansionTileItem` from anywhere.
* Can easily custom or add decoration into an `ExpansionTileItem` with `Border`, `BorderRadius`, `Shadow`, or `BoxDecoration` and more.
* Can lock to extend behavior of an `ExpansionTileItem` until a task is completed.
* Can remove completely the `trailing`, included: area, arrow icon. With that the `title` can be extended the width.
* Can remove completely default vertical title padding of ExpansionTile.
* Can hide the subtitle of an `ExpansionTileItem` whenever extend the view.
* Can change the default Trailing Icon with keeping default rotate animation.

Group features:
* Can group `ExpansionTileItem`s together and manage them.
* Can manage interactions of items in group with supported types: `ExpandOnlyCurrent`, `ExpandAll`, `CollapseAll`, `ExpandAllOrCollapseAll`, `expandAlwaysCurrent`.
* Can listen to any changed behavior of any item in the group.
* Can add the space between items in the group.

## Documentation
See the API documentation for details on the following topics:

- [Getting started](https://pub.dev/documentation/expansion_tile_group/latest/topics/Get%20started-topic.html)
- [Upgrade an existing app](https://pub.dev/documentation/expansion_tile_group/latest/topics/Upgrading-topic.html)
- [Item features](https://pub.dev/documentation/expansion_tile_group/latest/topics/Item%20features-topic.html)
- [Group features](https://pub.dev/documentation/expansion_tile_group/latest/topics/Group%20features-topic.html)
- [Troubleshooting](https://pub.dev/documentation/expansion_tile_group/latest/topics/Troubleshooting-topic.html)

## FAQ

You can read the FAQ here: [FAQ](https://github.com/congthanhng/Expansion-Tile-Group/wiki/FAQ)

## Sponsoring

If this package or any other package I created is helping you, please consider sponsoring me so that I can take time to update this package.

<a href="https://www.buymeacoffee.com/congthanhng" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>

OR

![7ezgif-5-20a8a8001a](https://user-images.githubusercontent.com/15138747/207929534-6ca20aea-62ae-405a-81a4-0f0139f69467.png)

## Contributions

Feel free to contribute to this project. Check more [Contributing guide](https://github.com/congthanhng/Expansion-Tile-Group/blob/main/CONTRIBUTING.md)

**I'd really appreciate it if you know any common ExpansionTile UIs and give the PR.**

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
[ForceBehavior]: https://github.com/congthanhng/Expansion-Tile-Group/issues/22