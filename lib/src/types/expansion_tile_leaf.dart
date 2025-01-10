import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ExpansionTileLeaf extends ExpansionTileItem {
  ExpansionTileLeaf({
    super.key,
    required super.title,
    required super.children,
    super.onExpansionChanged,
    super.expansionKey,
    super.initiallyExpanded = false,
    super.tilePadding,
    super.collapsedIconColor,
    super.expandedCrossAxisAlignment,
    super.iconColor,
    super.textColor,
    super.subtitle,
    super.maintainState,
    super.controlAffinity,
    super.collapsedTextColor,
    super.collapsedBackgroundColor,
    super.trailing,
    super.leading,
    super.backgroundColor,
    super.decoration,
    super.border,
    super.themeData,
    super.boxShadow,
    super.clipBehavior,
    super.trailingIcon,
    super.expandedAlignment,
    super.childrenPadding,
    super.isHasTrailing,
    super.isDefaultVerticalPadding,
    super.isEnableExpanded,
    super.isHideSubtitleOnExpanded,
    super.isOnlyTrailingDoToggle,
    super.controller,
    super.index,
    bool isOutlined = false,
    double? leafRadius,
    bool isReverseLeaf = false,
    Color? collapsedBorderColor,
    Color? expendedBorderColor,
  }) : super(
          borderRadius: isReverseLeaf
              ? BorderRadius.only(
                  bottomRight: Radius.circular(leafRadius ?? 20),
                  topLeft: Radius.circular(leafRadius ?? 20))
              : BorderRadius.only(
                  bottomLeft: Radius.circular(leafRadius ?? 20),
                  topRight: Radius.circular(leafRadius ?? 20)),
          collapsedBorderColor: collapsedBorderColor ?? Colors.grey,
          expendedBorderColor: expendedBorderColor ?? Colors.blue,
          isHasBottomBorder: isOutlined ? false : true,
          isHasLeftBorder: isOutlined ? false : true,
          isHasRightBorder: isOutlined ? false : true,
          isHasTopBorder: isOutlined ? false : true,
        );
}
