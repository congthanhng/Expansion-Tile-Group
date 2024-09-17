import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:expansion_tile_group/src/core/utils.dart';
import 'package:flutter/material.dart';

class ExpansionTileGroup extends StatefulWidget {
  const ExpansionTileGroup(
      {Key? key,
      required this.children,
      this.toggleType = ToggleType.none,
      this.onItemChanged,
      this.spaceBetweenItem = 0.0})
      : assert(spaceBetweenItem >= 0.0,
            '[Error] ExpansionTileGroup: The spaceBetweenItem must be >= 0'),
        super(key: key);
  final List<Widget> children;
  final ToggleType toggleType;
  final Function(int, bool)? onItemChanged;
  final double spaceBetweenItem;

  @override
  State<ExpansionTileGroup> createState() => _ExpansionTileGroupState();
}

class _ExpansionTileGroupState extends State<ExpansionTileGroup> {
  final keysMap = <int, GlobalKey<ExpansionTileCoreState>>{};
  final modifiedChildren = <Widget>[];

  bool _isTransforming = false;

  @override
  void initState() {
    _generateKey();
    _modifyChildren();
    super.initState();
  }

  void _generateKey({bool isClear = false}) {
    if (isClear) {
      keysMap.clear();
    }
    widget.children.forEachIndexed(
      (index, e) {
        if (e is ExpansionTileItem) {
          final entry = MapEntry(index, e.expansionKey ?? GlobalKey());
          keysMap[entry.key] = entry.value;
        }
      },
    );
  }

  void _modifyChildren({bool isClear = false}) {
    if (isClear) {
      modifiedChildren.clear();
    }
    final modifies = widget.children.mapIndexed(
      (index, e) {
        if (e is ExpansionTileItem) {
          return e.copyWith(
              expansionKey: keysMap[index] ?? GlobalKey(),
              onExpansionChanged: (isExpanded) {
                if (!_isTransforming) {
                  _handleBehaviors(index, isExpanded, false);
                  widget.onItemChanged?.call(index, isExpanded);
                }
              });
        }
        return e;
      },
    ).toList();

    modifiedChildren.addAll(modifies);
  }

  @override
  void didUpdateWidget(ExpansionTileGroup oldWidget) {
    _generateKey(isClear: true);
    _modifyChildren(isClear: true);
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [...modifiedChildren].separatedBy(SizedBox(
        height: widget.spaceBetweenItem,
      )),
    );
  }

  void _handleBehaviors(int index, bool isExpanded, bool isDefaultExpand) {
    switch (widget.toggleType) {
      case ToggleType.expandOnlyCurrent:
        _onExpandOne(index, isExpanded, isDefaultExpand);
        break;
      case ToggleType.expandAlwaysCurrent:
        _onExpandAlwaysCurrent(index, isExpanded, isDefaultExpand);
        break;
      case ToggleType.collapseAll:
        _onCollapseAll(index, isExpanded, isDefaultExpand);
        break;
      case ToggleType.expandAll:
        _onExpandAll(index, isExpanded, isDefaultExpand);
        break;
      case ToggleType.expandAllOrCollapseAll:
        _onExpandAllOrCollapseAll(index, isExpanded, isDefaultExpand);
        break;
      case ToggleType.none:
        break;
    }
  }

  void _onExpandOne(int index, bool isExpanded, bool isDefaultExpand) {
    _isTransforming = true;
    if (isExpanded) {
      keysMap[index]?.currentState?.expand();
    } else {
      keysMap[index]?.currentState?.collapse();
    }
    for (int i = 0; i < keysMap.length; i++) {
      if (i != index) {
        if (isDefaultExpand) {
          keysMap[i]?.currentState?.expand();
        } else {
          keysMap[i]?.currentState?.collapse();
        }
      }
    }
    _isTransforming = false;
  }

  void _onExpandAlwaysCurrent(int index, bool isExpanded, bool isDefaultExpand) {
    _isTransforming = true;
    keysMap[index]?.currentState?.expand();
    for (int i = 0; i < keysMap.length; i++) {
      if (i != index) {
        if (isDefaultExpand) {
          keysMap[i]?.currentState?.expand();
        } else {
          keysMap[i]?.currentState?.collapse();
        }
      }
    }
    _isTransforming = false;
  }

  void _onCollapseAll(int index, bool isExpanded, bool isDefaultExpand) {
    _isTransforming = true;
    if (!isExpanded) {
      for (int i = 0; i < keysMap.length; i++) {
        keysMap[i]?.currentState?.collapse();
      }
    }
    _isTransforming = false;
  }

  void _onExpandAll(int index, bool isExpanded, bool isDefaultExpand) {
    _isTransforming = true;
    if (isExpanded) {
      for (int i = 0; i < keysMap.length; i++) {
        keysMap[i]?.currentState?.expand();
      }
    }
    _isTransforming = false;
  }

  void _onExpandAllOrCollapseAll(
      int index, bool isExpanded, bool keepState) {
    _isTransforming = true;
    if (isExpanded) {
      for (int i = 0; i < keysMap.length; i++) {
        keysMap[i]?.currentState?.expand();
      }
    } else {
      for (int i = 0; i < keysMap.length; i++) {
        keysMap[i]?.currentState?.collapse();
      }
    }
    _isTransforming = false;
  }
}
