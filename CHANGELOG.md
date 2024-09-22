## 2.1.0
* New Feature:
  - Add new way to implement *group* feature: ExpansionGroupController
* Update
  - Example with new feature
  - Optimize code and improve performance

## 2.0.0
* BIG UPDATE!!
* New Feature:
  - Add new item type: `ExpansionTileCard` also be called `ExpansionTileItem.card` inspired by [expansion_tile_card](https://pub.dev/packages/expansion_tile_card)
* *BREAKING CHANGE:*
  - Rename: `ExpansionTileCustom` to `ExpansionTileCore`
  - Rename: `ExpansionTileBorderItem` to `ExpansionTileOutlined`
  - Rename: `ExpansionTileWithoutBorderItem` to `ExpansionTileFlat`
  - Rename: `ExpansionTileLeafItem` to `ExpansionTileLeaf`
  - Rename: `ExpansionTileItem.withBorder` to `ExpansionTileItem.outlined`
  - Rename: `ExpansionTileItem.withoutBorder` to `ExpansionTileItem.flat`
* Update example
  - Add Fantasy samples
    + Action Card Card
    + Action Drop Card
    + Action Progress Card
    + Action Stretch Card

Check out [Example Demo](https://congthanhng.github.io/ExpansionTileGroupExample/)

## 1.2.8
* Update documentation

## 1.2.6
* New Feature:
  - Added trailing builder [#41](https://github.com/congthanhng/Expansion-Tile-Group/pull/41)
  - New Item Type: `ExpansionTileLeafItem`
  - New way to call variants of `ExpansionTileItem`:
    + `ExpansionTileItem.withBorder` similar with `ExpansionTileBorderItem`
    + `ExpansionTileItem.withoutBorder` similar with `ExpansionTileWithoutBorderItem`
    + `ExpansionTileItem.leaf` similar with `ExpansionTileLeafItem`
* Fix:
  - Title and subtitle overflow fix [#44](https://github.com/congthanhng/Expansion-Tile-Group/pull/44)
* Update examples
* Update README with shorter and easier to read

## 1.2.5
* New feature:
  - Hide subtitle on view expanded [#45](https://github.com/congthanhng/Expansion-Tile-Group/discussions/45)
* Update examples
* *BREAKING CHANGE:*
  - Rename: `ToggleType.expandAllAndCollapseAll` to `ToggleType.expandAllOrCollapseAll`

## 1.2.4
* Add new toggle type for group: `ExpandAlwaysCurrent` [#39](https://github.com/congthanhng/Expansion-Tile-Group/issues/39)
* Update examples

## 1.2.3
* Update removing default vertical padding via `isDefaultVerticalPadding`
* Improvement with PR #36

## 1.2.2
* Implement removing default vertical padding via `isDefaultVerticalPadding`

## 1.2.1
* Fix bug

## 1.2.0
* Update new flutter SDK version to 3.7 and fix warning from analyze
* *BREAKING CHANGE:*
  - `theme.textTheme.subtitle1` is deprecated. Use `titleMedium` instead

## 1.1.9
* Format files

## 1.1.8
* Improve force expansion behavior for `ExpansionTileGroup`

## 1.1.7
* Added feature:
 - Can force control behaviors of an item: expand or collapse via `isEnableExpanded`
* Update examples

## 1.1.6
* Update Readme

## 1.1.2
* Update Readme
* Add labelers

## 1.1.1
* Optimized conditions between properties

## 1.1.0
* BREAKING CHANGE
  - Added conditions between properties of `ExpansionTileItem`

## 1.0.3
* Updated Readme

## 1.0.2
* Updated Readme

## 1.0.1
* Updated Readme
* Temporary remove funding
* *BREAKING CHANGE:*
  - Fix spell: `expandAllAndCollapseALl` to `expandAllAndCollapseAll`
  
## 1.0.0
* Removed readme of example
* Added feature:
  - Can remove completely the `trailing` included: area, arrow icon, with `isHasTrailing` flag

## 0.0.1
* Initial package
