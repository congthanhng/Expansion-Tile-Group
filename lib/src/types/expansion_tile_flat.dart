import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ExpansionTileFlat extends ExpansionTileItem {
  const ExpansionTileFlat({
    super.key,
    required super.title,
    required super.children,
    super.onExpansionChanged,
    super.expansionKey,
    super.initiallyExpanded = false,
    super.tilePadding,
    super.expandedAlignment,
    super.collapsedIconColor,
    super.expandedCrossAxisAlignment,
    super.iconColor,
    super.textColor,
    super.subtitle,
    super.maintainState = false,
    super.controlAffinity,
    super.collapsedTextColor,
    super.collapsedBackgroundColor,
    super.childrenPadding,
    super.trailing,
    super.leading,
    super.backgroundColor,
    super.decoration,
    super.borderRadius,
    super.themeData,
    super.boxShadow,
    super.clipBehavior,
    super.collapsedBorderColor,
    super.expendedBorderColor,
    super.isHasTrailing,
    super.isEnableExpanded,
    super.isDefaultVerticalPadding,
    super.isHideSubtitleOnExpanded,
    super.isOnlyTrailingDoToggle,
    super.trailingIcon,
    super.controller,
    super.index,
  }) : super(
            border: const Border(),
            isHasRightBorder: false,
            isHasLeftBorder: false,
            isHasTopBorder: false,
            isHasBottomBorder: false);
}
