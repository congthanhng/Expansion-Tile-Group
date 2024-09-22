import 'package:flutter/widgets.dart';

import 'expansion_tile_core.dart';
import 'toggle_type.dart';

class ExpansionGroupController with ChangeNotifier {
  ExpansionGroupController(
      {this.toggleType = ToggleType.none,
      required this.length,
      this.initialIndex = 0}) {
    _generateKeys();
  }

  final ToggleType toggleType;
  final int length;
  final int initialIndex;

  final _keysMap = <int, GlobalKey<ExpansionTileCoreState>>{};
  final _keysMapReverse = <GlobalKey<ExpansionTileCoreState>, int>{};
  bool _isTransforming = false;

  int indexChanged = 0;
  bool isExpanded = false;

  GlobalKey<ExpansionTileCoreState> key(int index) {
    assert(index >= 0 && index < length,
        '[Error] GroupController: index out of range 0..${length - 1}');
    return _keysMap[index]!;
  }

  void _generateKeys() {
    _keysMap.clear();
    for (int i = 0; i < length; i++) {
      final key = GlobalKey<ExpansionTileCoreState>();
      _keysMap[i] = key;
      _keysMapReverse[key] = i;
    }
  }

  void onItemChanged(int index, bool isExpanded) {
    if (_isTransforming) return;
    indexChanged = index;
    this.isExpanded = isExpanded;
    handleBehaviors(index, isExpanded, false);
  }

  void onItemChangedByKey(
      GlobalKey<ExpansionTileCoreState> key, bool isExpanded) {
    if (_isTransforming) return;
    final index = _keysMapReverse[key]!;
    indexChanged = index;
    this.isExpanded = isExpanded;
    handleBehaviors(index, isExpanded, false);
  }

  void handleBehaviors(int index, bool isExpanded, bool isDefaultExpand) {
    switch (toggleType) {
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
    notifyListeners();
  }

  void _onExpandOne(int index, bool isExpanded, bool isDefaultExpand) {
    if (_isTransforming) return;
    _isTransforming = true;
    if (isExpanded) {
      _keysMap[index]?.currentState?.expand();
    } else {
      _keysMap[index]?.currentState?.collapse();
    }
    for (int i = 0; i < _keysMap.length; i++) {
      if (i != index) {
        if (isDefaultExpand) {
          _keysMap[i]?.currentState?.expand();
        } else {
          _keysMap[i]?.currentState?.collapse();
        }
      }
    }
    _isTransforming = false;
  }

  void _onExpandAlwaysCurrent(
      int index, bool isExpanded, bool isDefaultExpand) {
    if (_isTransforming) return;

    _isTransforming = true;
    _keysMap[index]?.currentState?.expand();
    for (int i = 0; i < _keysMap.length; i++) {
      if (i != index) {
        if (isDefaultExpand) {
          _keysMap[i]?.currentState?.expand();
        } else {
          _keysMap[i]?.currentState?.collapse();
        }
      }
    }
    _isTransforming = false;
  }

  void _onCollapseAll(int index, bool isExpanded, bool isDefaultExpand) {
    if (_isTransforming) return;

    _isTransforming = true;
    if (!isExpanded) {
      for (int i = 0; i < _keysMap.length; i++) {
        _keysMap[i]?.currentState?.collapse();
      }
    }
    _isTransforming = false;
  }

  void _onExpandAll(int index, bool isExpanded, bool isDefaultExpand) {
    if (_isTransforming) return;

    _isTransforming = true;
    if (isExpanded) {
      for (int i = 0; i < _keysMap.length; i++) {
        _keysMap[i]?.currentState?.expand();
      }
    }
    _isTransforming = false;
  }

  void _onExpandAllOrCollapseAll(int index, bool isExpanded, bool keepState) {
    if (_isTransforming) return;

    _isTransforming = true;
    if (isExpanded) {
      for (int i = 0; i < _keysMap.length; i++) {
        _keysMap[i]?.currentState?.expand();
      }
    } else {
      for (int i = 0; i < _keysMap.length; i++) {
        _keysMap[i]?.currentState?.collapse();
      }
    }
    _isTransforming = false;
  }

  void addItemChangedListener(Function(int index, bool isExpanded) listener) {
    addListener(
      () {
        listener.call(indexChanged, isExpanded);
      },
    );
  }
}
