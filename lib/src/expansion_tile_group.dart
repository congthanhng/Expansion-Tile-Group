import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ExpansionTileGroup extends StatefulWidget {
  const ExpansionTileGroup(
      {Key? key,
      required this.children,
      this.toggleType = ToggleType.none,
      this.onExpansionItemChanged})
      : super(key: key);
  final List<ExpansionTileItem> children;
  final ToggleType toggleType;
  final Function(int, bool)? onExpansionItemChanged;

  @override
  State<ExpansionTileGroup> createState() => _ExpansionTileGroupState();
}

class _ExpansionTileGroupState extends State<ExpansionTileGroup> {
  late final List<GlobalKey<ExpansionTileCustomState>> expansionTileKeys;
  late final List<ExpansionTileItem> expansionChildren;

  bool _isGroupTransforming = false;

  void _updateExpandedForAccordions(
      int index, bool isExpanded, bool defaultState) {
    switch (widget.toggleType) {
      case ToggleType.expandOnlyCurrent:
        _onExpandOne(index, isExpanded, defaultState);
        break;
      case ToggleType.collapseAll:
        _onCollapseAll(index, isExpanded, defaultState);
        break;
      case ToggleType.expandAll:
        _onExpandAll(index, isExpanded, defaultState);
        break;
      case ToggleType.none:
        break;
    }
  }

  void _onExpandOne(int index, bool isExpanded, bool defaultState) {
    _isGroupTransforming = true;
    if (isExpanded) {
      expansionTileKeys[index].currentState?.expand();
    } else {
      expansionTileKeys[index].currentState?.collapse();
    }
    for (int i = 0; i < expansionTileKeys.length; i++) {
      if (i != index) {
        if (defaultState) {
          expansionTileKeys[i].currentState?.expand();
        } else {
          expansionTileKeys[i].currentState?.collapse();
        }
      }
    }
    _isGroupTransforming = false;
  }

  void _onCollapseAll(int index, bool isExpanded, bool defaultState) {
    _isGroupTransforming = true;
    if (!isExpanded) {
      for (int i = 0; i < expansionTileKeys.length; i++) {
        expansionTileKeys[i].currentState?.collapse();
      }
    }
    _isGroupTransforming = false;
  }

  //todo create abtract class to handle
  void _onExpandAll(int index, bool isExpanded, bool defaultState) {
    _isGroupTransforming = true;
    if (isExpanded) {
      for (int i = 0; i < expansionTileKeys.length; i++) {
        expansionTileKeys[i].currentState?.expand();
      }
    }
    _isGroupTransforming = false;
  }

  @override
  void initState() {
    expansionTileKeys = List.generate(widget.children.length,
        (index) => widget.children[index].expansionKey ?? GlobalKey());
    expansionChildren = List.generate(
        widget.children.length,
        (index) => widget.children[index].copyWith(
            expansionKey: expansionTileKeys[index],
            onExpansionChanged: (isExpanded) {
              if (!_isGroupTransforming) {
                _updateExpandedForAccordions(index, isExpanded, false);
                widget.onExpansionItemChanged?.call(index, isExpanded);
              }
            }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [...expansionChildren],
    );
  }
}
