import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ExpansionTileLeafItem extends ExpansionTileItem {
  ExpansionTileLeafItem({
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
    super.collapsedBorderColor,
    super.expendedBorderColor,
    super.trailingIcon,
    Alignment? expandedAlignment,
    EdgeInsetsGeometry? childrenPadding,
    double? leafRadius,
    bool isReverseLeaf = false,
  }) : super(
          borderRadius: isReverseLeaf
              ? BorderRadius.only(
                  bottomRight: Radius.circular(leafRadius ?? 20),
                  topLeft: Radius.circular(leafRadius ?? 20))
              : BorderRadius.only(
                  bottomLeft: Radius.circular(leafRadius ?? 20),
                  topRight: Radius.circular(leafRadius ?? 20)),
          childrenPadding: childrenPadding ??
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          expandedAlignment: expandedAlignment ?? Alignment.topLeft,
          isHasBottomBorder: true,
          isHasLeftBorder: true,
          isHasRightBorder: true,
          isHasTopBorder: true,
        );
}
