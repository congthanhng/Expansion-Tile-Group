import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ExpansionTileGroup extends StatefulWidget {
  const ExpansionTileGroup(
      {Key? key,
      required this.children,
      this.toggleType = ToggleType.none,
      this.onExpansionItemChanged,
      this.spaceBetweenItem = 0.0})
      : assert(spaceBetweenItem >= 0.0,
            'Error: Please set the spaceBetweenItem of ExpansionTileGroup must be >= 0'),
        super(key: key);
  final List<ExpansionTileItem> children;
  final ToggleType toggleType;
  final Function(int, bool)? onExpansionItemChanged;
  final double spaceBetweenItem;

  @override
  State<ExpansionTileGroup> createState() => _ExpansionTileGroupState();
}

class _ExpansionTileGroupState extends State<ExpansionTileGroup> {
  late final List<GlobalKey<ExpansionTileCustomState>> expansionTileKeys;
  late final List<ExpansionTileItem> expansionChildren;

  bool _isGroupTransforming = false;

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
  void didUpdateWidget(ExpansionTileGroup oldWidget) {
    expansionChildren.clear();
    expansionChildren.addAll( List.generate(
        widget.children.length,
            (index) => widget.children[index].copyWith(
            expansionKey: expansionTileKeys[index],
            onExpansionChanged: (isExpanded) {
              if (!_isGroupTransforming) {
                _updateExpandedForAccordions(index, isExpanded, false);
                widget.onExpansionItemChanged?.call(index, isExpanded);
              }
            })));
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [...getChildrenToShown()],
    );
  }

  List<Widget> getChildrenToShown() {
    var result = <Widget>[];
    for (var item in expansionChildren) {
      result.add(item);
      if (expansionChildren.last != item) {
        result.add(SizedBox(
          height: widget.spaceBetweenItem,
        ));
      }
    }
    return result;
  }

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
      case ToggleType.expandAllAndCollapseAll:
        _onExpandAllAndCollapseALl(index, isExpanded, defaultState);
        break;
      case ToggleType.none:
        break;
    }
  }

  //todo create abstract class to handle action
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

  //todo create abstract class to handle action
  void _onCollapseAll(int index, bool isExpanded, bool defaultState) {
    _isGroupTransforming = true;
    if (!isExpanded) {
      for (int i = 0; i < expansionTileKeys.length; i++) {
        expansionTileKeys[i].currentState?.collapse();
      }
    }
    _isGroupTransforming = false;
  }

  //todo create abstract class to handle action
  void _onExpandAll(int index, bool isExpanded, bool defaultState) {
    _isGroupTransforming = true;
    if (isExpanded) {
      for (int i = 0; i < expansionTileKeys.length; i++) {
        expansionTileKeys[i].currentState?.expand();
      }
    }
    _isGroupTransforming = false;
  }

  //todo create abstract class to handle action
  void _onExpandAllAndCollapseALl(
      int index, bool isExpanded, bool defaultState) {
    _isGroupTransforming = true;
    if (isExpanded) {
      for (int i = 0; i < expansionTileKeys.length; i++) {
        expansionTileKeys[i].currentState?.expand();
      }
    } else {
      for (int i = 0; i < expansionTileKeys.length; i++) {
        expansionTileKeys[i].currentState?.collapse();
      }
    }
    _isGroupTransforming = false;
  }
}
